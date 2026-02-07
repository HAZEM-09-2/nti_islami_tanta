import 'package:flutter/material.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text(
          "sebha",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
