// ignore_for_file: prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/app_color.dart';

class SouraDetails extends StatefulWidget {
  final int index;
  SouraDetails({super.key, required this.index});

  @override
  State<SouraDetails> createState() => _SouraDetailsState();
}

class _SouraDetailsState extends State<SouraDetails> {
  late String souraData;

  Future<String> SouraAyat() async {
    souraData = await rootBundle.loadString(
      "assets/files/Suras/${widget.index}.txt",
    );
    setState(() {});
    return souraData;
  }

  @override
  void initState() {
    SouraAyat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text("AL-Fatihah"), centerTitle: true),
      body: Stack(
        children: [
          Center(child: Image.asset("assets/images/Icons/qran_details_bc.png")),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              children: [
                Text(
                  "الفاتحه",
                  style: TextStyle(fontSize: 26.sp, color: AppColors.primary),
                ),
                SizedBox(height: 20.h),
                Text(
                  souraData,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 20.sp,
                    wordSpacing: 2.w,
                    height: 2.h,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
