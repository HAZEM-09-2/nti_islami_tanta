import 'package:flutter/material.dart';
import 'package:islami/features/nav/tabs/hadeth_tab/hadith_view.dart';
import 'package:islami/features/nav/tabs/quran_tab/quran_view.dart';

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
    Center(child: Text("sebha")),
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
                width: 280,
              ),
            ),
            screens[currentindex],
          ],
        ),
        backgroundColor: Colors.transparent,

        bottomNavigationBar: Container(
          height: 95,
          width: double.infinity,
          color: Color(0xffE2BE7F),
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
                icon: Image.asset('assets/images/NavIconImages/ic_quran.png'),
                label: "Quran",
                activeIcon: buildActiveNavIcon(
                  'assets/images/NavIconImages/ic_quran.png',
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/NavIconImages/ahadeth.png"),
                label: "Hadith",
                activeIcon: buildActiveNavIcon(
                  "assets/images/NavIconImages/ahadeth.png",
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/NavIconImages/sebha.png"),
                label: "Bearish",
                activeIcon: buildActiveNavIcon(
                  "assets/images/NavIconImages/sebha.png",
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/NavIconImages/ic_radio.png"),
                label: "Radio",
                activeIcon: buildActiveNavIcon(
                  "assets/images/NavIconImages/ic_radio.png",
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/NavIconImages/time.png"),
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
      height: 34,
      width: 59,
      decoration: BoxDecoration(
        color: Color(0xff202020).withAlpha(60),
        borderRadius: BorderRadius.circular(66),
      ),
      child: Image.asset(imagePath, color: Colors.white),
    );
  }
}
