import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/features/nav/tabs/quran_tab/widgets/most_resently.dart';
import 'package:islami/features/nav/tabs/quran_tab/widgets/sura_list.dart';
import 'package:islami/features/nav/tabs/quran_tab/widgets/sura_search.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 185.h),
            SuraSearch(),
            SizedBox(height: 20.w),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [MostResently(), SizedBox(height: 10), SuraList()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
