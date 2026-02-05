import 'package:flutter/material.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 170),
              Container(
                height: 565,
                width: 313,
                decoration: BoxDecoration(
                  color: Color(0xffE2BE7F),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Image.asset("assets/images/Icons/left_corner.png"),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Image.asset(
                        "assets/images/Icons/right_corner.png",
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      child: Image.asset("assets/images/Icons/Mosque-02 2.png"),
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/Icons/HadithCardBackGround 1.png",
                      ),
                    ),
                    Positioned(
                      top: 42,
                      left: 91.6,
                      child: Text(
                        "الحديث الاول",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 101.6,
                      left: 91.6,
                      child: Text(
                        ""
                        "",

                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
