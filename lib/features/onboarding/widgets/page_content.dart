import 'package:flutter/material.dart';

class PageContant extends StatelessWidget {
  const PageContant({
    super.key,
    required this.imagePath,
    required this.title,
    this.description,
  });
  final String imagePath;
  final String title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Image.asset(imagePath, height: 350),
        const SizedBox(height: 60),
        Text(
          title,
          style: TextStyle(
            color: Color(0xffE2BE7F),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          description ?? '',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xffE2BE7F), fontSize: 16),
        ),
      ],
    );
  }
}
