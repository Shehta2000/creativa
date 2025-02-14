import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text_field.dart';

class InputSection extends StatelessWidget {
  const InputSection({
    super.key,
    required this.num1Controller,
    required this.num2Controller,
  });
  final TextEditingController num1Controller;
  final TextEditingController num2Controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff007C6A),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.r),
          bottomRight: Radius.circular(40.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 25.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(controller: num1Controller, hintText: 'Num1'),
            SizedBox(height: 20.h),
            CustomTextField(controller: num2Controller, hintText: 'Num2'),
          ],
        ),
      ),
    );
  }
}
