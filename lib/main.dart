import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'calculate_screen.dart';

void main() {
  runApp(
    DevicePreview(
  defaultDevice: Devices.ios.iPhone13ProMax,      
  enabled: true,
      builder: (context) => const Task2Creativa(),
    ),
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
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
           darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.dark,
          theme: ThemeData.light(),
          home:  CalculateScreen(),
        );
      },
    );
  }
}
