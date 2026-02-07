import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/app_color.dart';

class MostResently extends StatelessWidget {
  const MostResently({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Most Resently",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 150.w,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(left: 17, right: 6, bottom: 7, top: 7),
                margin: EdgeInsets.only(right: 5),
                height: 50.h,
                width: 283.w,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Al-Anbiya",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                          ),
                        ),
                        Text("الأنبياء", style: TextStyle(fontSize: 24.sp)),
                        Text(
                          "112 Verses  ",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/images/Icons/sura_item.png",
                      height: 136.h,
                      width: 132.w,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
