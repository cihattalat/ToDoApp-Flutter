import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


const Color bluishClr = Color(0xFF4e5ae8);
const Color primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color dakHeaderClr = Color(0xFF424242);

class Themes{
  static final light = ThemeData(
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    primaryColor: primaryClr,
  );
  static final dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkGreyClr,
    backgroundColor: darkGreyClr,
  );

}

TextStyle get subHeadingStyle{
  return GoogleFonts.lato (
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,

    )
  );
}

TextStyle get headingStyle{
  return GoogleFonts.lato (
    textStyle: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,

    )
  );
  
}
TextStyle get titleStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Get.isDarkMode?Colors.white:Colors.black
    )
  );
}
TextStyle get subTitleStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Get.isDarkMode?Colors.grey[100]:Colors.grey[600]
    )
  );
}