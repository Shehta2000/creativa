import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_container.dart';

class ResultSection extends StatelessWidget {
  const ResultSection({
    super.key,
    required this.result,
  });

  final double result;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       const  CustomContainer(),
        Text(
          textAlign: TextAlign.center,
          'Result = $result', style: TextStyle(fontSize: 20.sp, color: Colors.black)),
       const  CustomContainer(),
      ],
    );
  }
}