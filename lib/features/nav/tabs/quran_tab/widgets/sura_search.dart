import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuraSearch extends StatelessWidget {
  const SuraSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),

          prefixIcon: Image.asset("assets/images/Icons/ic_pre_search.png"),
          hintText: 'Sura Name',
          hintStyle: TextStyle(color: Colors.white, fontSize: 18),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Color(0xffE2BE7F)),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: Color(0xffE2BE7F)),
          ),
          
        ),
      ),
    );
  }
}
