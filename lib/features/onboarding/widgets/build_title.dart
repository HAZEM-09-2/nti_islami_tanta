import 'package:flutter/material.dart';

Widget buildTitle() {
  return Column(
    children: [
      const SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('assets/images/IslamiMosque.png', height: 150)],
      ),
    ],
  );
}
