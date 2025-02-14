// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,
    required this.controller, required this.hintText,
  });
  final String hintText ;
  TextEditingController controller ;
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.left, 
      style: const TextStyle(color: Colors.black), 
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:  TextStyle(color: Colors.black.withOpacity(0.6)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide:  BorderSide(color: Colors.black, width: 2.w),
        ),
      ),
    );
  }
}
