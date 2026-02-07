// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/features/onboarding/screens/onboarding_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "Janna",
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xff212121),
            iconTheme: IconThemeData(color: Color(0xffE2BE7F)),
            titleTextStyle: TextStyle(
              color: Color(0xffE2BE7F),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
