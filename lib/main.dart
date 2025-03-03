import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'calculate_screen.dart';

void main() {
  runApp(
    const Task2Creativa(),
  );
}

class Task2Creativa extends StatelessWidget {
  const Task2Creativa({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'task2_creativa',
      
          debugShowCheckedModeBanner: false,
           darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.dark,
          theme: ThemeData.light(),
          home: const  CalculateScreen(),
        );
      },
    );
  }
}
