import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/features/nav/tabs/hadeth_tab/widgets/hadith_card.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200.h),
            CarouselSlider.builder(
              itemCount: 50,
              itemBuilder: (context, index, realIndex) {
                return SizedBox(
                  width: 320.w,
                  child: HadithCard(index: index),
                );
              },
              options: CarouselOptions(
                height: 625.h,
                viewportFraction: 0.75,
                enlargeCenterPage: true,
                enlargeFactor: .2,
                enableInfiniteScroll: true,
                autoPlay: false,
                scrollPhysics: const BouncingScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
