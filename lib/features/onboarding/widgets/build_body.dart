import 'package:flutter/material.dart';

Widget buildBody({required Widget child}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: child,
  );
}
