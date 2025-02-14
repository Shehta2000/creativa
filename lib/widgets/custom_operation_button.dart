import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOperationButton extends StatelessWidget {
  final dynamic icon;
   //* Accept any type of data.
  final VoidCallback onPressed;

  const CustomOperationButton({
    super.key,
    this.icon,
    required this.onPressed, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 50.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: icon is IconData
              ? Icon(icon as IconData, size: 24, color: Colors.black)
              : Text(
                  icon.toString(),
                  style: const TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
