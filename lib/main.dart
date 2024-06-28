import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/splash/splash.dart';

import 'features/home/presentation/scan_result/scan_result.dart';
import 'features/home/presentation/transport/transport.dart';
import 'features/home/presentation/trip_info/trip_info.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.`
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        // debugShowCheckedModeBanner: false,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff6C3428)),
          // useMaterial3: true,
        ),
        home: child,
      ),
      child: const Splash(),
      // child: MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   theme: ThemeData(
      //     colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff6C3428)),
      //     useMaterial3: true,
      //   ),
      //   home: Splash(),
      // ),
    );
  }
}
//Splash