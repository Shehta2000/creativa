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
  double? result;

  void calculateResult(String operation) {
    double? num1 = double.tryParse(num1Controller.text);
    double? num2 = double.tryParse(num2Controller.text);

    if (num1 == null || num2 == null) {
      setState(() {
        result = null; // عرض حالة الخطأ في الإدخال
      });
      return;
    }

    setState(() {
      result = performCalculation(num1, num2, operation);
    });
  }


  double? performCalculation(double num1, double num2, String operation) {
    switch (operation) {
      case 'add':
        return num1 + num2;
      case 'subtract':
        return num1 - num2;
      case 'multiply':
        return num1 * num2;
      case 'divide':
        return num2 != 0 ? num1 / num2 : null; //* Check  for division by zero
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            InputSection(
              num1Controller: num1Controller,
              num2Controller: num2Controller,
            ),
            SizedBox(height: 40.h),
            ResultSection(result: result ?? 0),
            SizedBox(height: 50.h),
            Expanded(child: _buildOperationButtons()),
          ],
        ),
      ),
    );
  }

  Widget _buildOperationButtons() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff007C6A),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.r),
          topRight: Radius.circular(40.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 25.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomOperationButton(icon: Icons.add, onPressed: () => calculateResult('add')),
            CustomOperationButton(icon: Icons.remove, onPressed: () => calculateResult('subtract')),
            CustomOperationButton(icon: Icons.close, onPressed: () => calculateResult('multiply')),
            CustomOperationButton(icon:'/', onPressed: () => calculateResult('divide')),
          ],
        ),
      ),
    );
  }
}
