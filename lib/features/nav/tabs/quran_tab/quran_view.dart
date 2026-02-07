import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/data/sura_name_list.dart';
import 'package:islami/features/nav/tabs/quran_tab/widgets/most_resently.dart';
import 'package:islami/features/nav/tabs/quran_tab/widgets/sura_list.dart';
import 'package:islami/features/nav/tabs/quran_tab/widgets/sura_search.dart';

class QuranView extends StatefulWidget {
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  List<SurahModel> suraNames = SuraName.surahs;

  List<SurahModel> filteredSuras = [];
  String searchText = "";

  @override
  void initState() {
    super.initState();
    filteredSuras = suraNames; // أول ما نفتح الصفحة
  }

  void searchSura(String query) {
    setState(() {
      filteredSuras = suraNames.where((sura) {
        return sura.nameAR.contains(query) ||
            sura.nameEN.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

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
            SuraSearch(onSearch: searchSura),
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
