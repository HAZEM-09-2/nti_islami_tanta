import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/data/sura_name_list.dart';
import 'package:islami/features/nav/tabs/quran_tab/widgets/soura_details.dart';

class SuraList extends StatelessWidget {
  const SuraList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sura Name",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SouraDetails(index: index),
                  ),
                );
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SouraDetails(index: index),
                    ),
                  );
                },
                child: ListTile(
                  leading: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Image.asset("assets/images/Icons/sura_number.png"),
                      Text(
                        (index = index + 1).toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    SuraName.surahs[index - 1].nameEN,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "${SuraName.surahs[index - 1].ayatCount} Verses",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    SuraName.surahs[index - 1].nameAR,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(color: Colors.grey),
          itemCount: 114,
        ),
      ],
    );
  }
}
