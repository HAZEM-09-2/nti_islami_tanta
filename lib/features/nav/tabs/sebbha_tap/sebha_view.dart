// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SebhaView extends StatefulWidget {
  SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int sebhaCounter = 0;
  int currentSebhaIndex = 0;

  final List<String> sebhaItems = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا إله إلا الله",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 220.h),
            Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),

            SizedBox(height: 70.h),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sebhaCounter++;
                      if (sebhaCounter == 33) {
                        sebhaCounter = 0;
                        currentSebhaIndex =
                            (currentSebhaIndex + 1) % sebhaItems.length;
                      }
                    });
                  },
                  child: Image.asset(
                    "assets/images/Icons/Sebha.png",
                    height: 450.h,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 120.h),
                    Text(
                      sebhaItems[currentSebhaIndex],
                      style: TextStyle(fontSize: 36, color: Colors.white),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "$sebhaCounter",
                      style: TextStyle(fontSize: 36, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
