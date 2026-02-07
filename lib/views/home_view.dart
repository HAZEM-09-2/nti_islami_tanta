import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/features/nav/tabs/hadeth_tab/hadith_view.dart';
import 'package:islami/features/nav/tabs/quran_tab/quran_view.dart';
import 'package:islami/features/nav/tabs/sebbha_tap/sebha_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentindex = 0;

  List<String> backGroundImages = [
    "assets/images/BGImages/home_bg.png",
    "assets/images/BGImages/ahadeth_bg.png",
    "assets/images/BGImages/sebha_bg.png",
    "assets/images/BGImages/radio_bg.png",
    "assets/images/BGImages/time_bg.png",
  ];

  List<Widget> screens = [
    Center(child: QuranView()),
    Center(child: HadithView()),
    Center(child: SebhaView()),
    Center(child: Text("radio")),
    Center(child: Text("time")),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backGroundImages[currentindex]),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        body: Stack(
          alignment: AlignmentGeometry.topCenter,
          children: [
            Positioned(
              child: Image.asset(
                "assets/images/OnboardingImages/IslamiMosque.png",
                width: 280.w,
              ),
            ),
            screens[currentindex],
          ],
        ),
        backgroundColor: Colors.transparent,

        bottomNavigationBar: Container(
          height: 97.7.h,
          width: double.infinity,
          color: Color.fromARGB(255, 0, 106, 255),
          child: BottomNavigationBar(
            backgroundColor: Color(0xffE2BE7F),
            currentIndex: currentindex,
            selectedItemColor: Colors.white,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                currentindex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/NavIconImages/ic_quran.png',
                  // height: 21,
                  // width: 21,
                ),
                label: "Quran",
                activeIcon: buildActiveNavIcon(
                  'assets/images/NavIconImages/ic_quran.png',
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/NavIconImages/ahadeth.png",
                  // height: 21.h,
                  // width: 21.w,
                ),
                label: "Hadith",
                activeIcon: buildActiveNavIcon(
                  "assets/images/NavIconImages/ahadeth.png",
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/NavIconImages/sebha.png",
                  height: 32.h,
                  width: 32.w,
                ),
                label: "Bearish",
                activeIcon: buildActiveNavIcon(
                  "assets/images/NavIconImages/sebha.png",
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/NavIconImages/ic_radio.png",
                  height: 32.h,
                  width: 31.w,
                ),
                label: "Radio",
                activeIcon: buildActiveNavIcon(
                  "assets/images/NavIconImages/ic_radio.png",
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/NavIconImages/time.png",
                  height: 27.h,
                  width: 27.w,
                ),
                label: "Time",
                activeIcon: buildActiveNavIcon(
                  "assets/images/NavIconImages/time.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildActiveNavIcon(String imagePath) {
    return Container(
      height: 34.h,
      width: 59.w,
      decoration: BoxDecoration(
        color: Color(0xff202020).withAlpha(60),
        borderRadius: BorderRadius.circular(66.r),
      ),
      child: Image.asset(imagePath, color: Colors.white),
    );
  }
}
