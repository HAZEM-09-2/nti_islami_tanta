import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/data/hadith_data_list.dart';
import 'package:islami/features/nav/tabs/hadeth_tab/widgets/hadith_details.dart';

class HadithCard extends StatelessWidget {
  final int index;
  const HadithCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HadithDetails(index: index + 1),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xffE2BE7F),
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage('assets/images/Icons/Hadith_Details_bg.png'),
            fit: BoxFit.fitWidth,
          ),
        ),

        child: FutureBuilder<String>(
          future: rootBundle.loadString(HadithData.hadithList[index].filePath),
          builder: (context, hadith) {
            // if (snapshot.connectionState == ConnectionState.waiting) {
            //   return const Center(child: CircularProgressIndicator());
            // }
            // if (snapshot.hasError) {
            //   return const Center(child: Text('Error loading text'));
            // }

            return SingleChildScrollView(
              child: Text(
                hadith.data ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.sp,
                  height: 1.8.h,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
