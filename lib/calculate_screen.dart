import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_creativa/widgets/input_section.dart';
import 'widgets/build_section.dart';
import 'widgets/custom_operation_button.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({super.key});
  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  double result = 0;

  void calculateResult(String operation) {
    final double num1 = double.tryParse(num1Controller.text) ?? 0;
    final double num2 = double.tryParse(num2Controller.text) ?? 0;

    setState(() {
      switch (operation) {
        case 'add':
          result = num1 + num2;
          break;
        case 'subtract':
          result = num1 - num2;
          break;
        case 'multiply':
          result = num1 * num2;
          break;
        case 'divide':
          result = num2 != 0 ? num1 / num2 : 0;
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              InputSection(num1Controller: num1Controller, num2Controller: num2Controller),
              SizedBox(height: 40.h),
              ResultSection(result: result),
              SizedBox(height: 50.h),
              _buildOperationButtons(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildOperationButtons() {
    return Container(
      height: 350.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color:const  Color(0xff007C6A),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40.r), topRight:const  Radius.circular(40)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 25.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomOperationButton(icon: Icons.add, onPressed: () => calculateResult('add')),
            CustomOperationButton(icon: Icons.remove, onPressed: () => calculateResult('subtract')),
            CustomOperationButton(icon: Icons.close, onPressed: () => calculateResult('multiply')),
            CustomOperationButton(icon: '/', onPressed: () => calculateResult('divide')),
          ],
        ),
      ),
      
    );
  }
}
