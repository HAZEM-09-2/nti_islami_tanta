// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/features/onboarding/widgets/build_body.dart';
import 'package:islami/features/onboarding/widgets/build_title.dart';
import 'package:islami/features/onboarding/widgets/custom_button.dart';
import 'package:islami/features/onboarding/widgets/page_content.dart';
import 'package:islami/features/onboarding/widgets/page_decoration.dart';
import 'package:islami/views/home_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        bodyPadding: EdgeInsets.only(top: 12.0),
        globalHeader: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/IslamiMosque.png', height: 150),
          ],
        ),
        pages: [
          PageViewModel(
            title: '',
            // titleWidget: buildTitle(),
            bodyWidget: buildBody(
              child: PageContant(
                imagePath: 'assets/images/Photo1.png',
                title: 'Welcome To Islmi App',
              ),
            ),
            decoration: pageDecoration(),
          ),
          PageViewModel(
            // titleWidget: buildTitle(),
            title: '',
            bodyWidget: buildBody(
              child: PageContant(
                imagePath: 'assets/images/Photo2.png',
                title: 'Welcome To Islami',
                description: 'We Are Very Excited To Have You In Our Community',
              ),
            ),
            decoration: pageDecoration(),
          ),
          PageViewModel(
            // titleWidget: buildTitle(),
            title: '',
            bodyWidget: buildBody(
              child: PageContant(
                imagePath: "assets/images/Photo3.png",
                title: "Reading The Quran",
                description: "Read, and your Lord is the Most Generous",
              ),
            ),
            decoration: pageDecoration(),
          ),
          PageViewModel(
            title: "",
            // titleWidget: buildTitle(),
            bodyWidget: buildBody(
              child: PageContant(
                imagePath: 'assets/images/Photo4.png',
                title: 'Bearish',
                description: 'Praise the name of your Lord, the Most High',
              ),
            ),
            decoration: pageDecoration(),
          ),
          PageViewModel(
            title: "",
            // titleWidget: buildTitle(),
            bodyWidget: buildBody(
              child: PageContant(
                imagePath: 'assets/images/Photo5.png',
                title: 'Holy Quran Radio',
                description:
                    'You can listen to the Holy Quran Radio through the application for free and easily',
              ),
            ),
            decoration: pageDecoration(),
          ),
        ],

        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => HomeView()),
          );
        },

        showBackButton: true,
        back: ButtonWidget(text: 'Back'),
        next: ButtonWidget(text: 'Next'),
        done: ButtonWidget(text: 'Finish'),

        dotsDecorator: DotsDecorator(
          size: Size(10, 10),
          color: Color(0xffE2BE7F),
          activeColor: Color(0xffE2BE7F),
          activeSize: Size(20, 8),
          shadows: List.filled(9, BoxShadow(offset: Offset(0, 0))),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),

        globalBackgroundColor: const Color(0xFF202020),
        dotsFlex: 1,
        nextFlex: 1,
        isProgressTap: true,
        isProgress: true,
        freeze: false,
      ),
    );
  }
}
