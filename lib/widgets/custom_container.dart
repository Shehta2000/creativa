
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 20.h, width: 30.w, decoration: const BoxDecoration(color: Color(0xff007C6A)));
  }
}
