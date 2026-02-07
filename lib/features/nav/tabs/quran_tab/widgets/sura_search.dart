import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/app_color.dart';

class SuraSearch extends StatelessWidget {
    final Function(String) onSearch;

   SuraSearch({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearch,
      style: TextStyle(color: Colors.white, fontSize: 18),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
    
        prefixIcon: Image.asset("assets/images/Icons/ic_pre_search.png"),
        hintText: 'Sura Name',
        hintStyle: TextStyle(color: Colors.white, fontSize: 18),
    
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.primary),
        ),
    
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        
      ),
    );
  }
}
