import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color firstColor = Color(0xff3F72AF);
Color secoundColor = Color(0xffDBE2EF);
Color textColorBlack = Color(0xff000000);
Color textColorWhite = Color(0xffFFFFFF);

TextStyle appbarTextStyle = GoogleFonts.poppins(
  color: textColorWhite,
  fontSize: 20,
);

TextStyle titleTextStyle = GoogleFonts.poppins(
  color: textColorBlack,
  fontWeight: FontWeight.bold,
  fontSize: 22,
);

TextStyle subTitleTextStyle = GoogleFonts.poppins(
  color: textColorBlack,
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

TextStyle descTextStyle = GoogleFonts.poppins(
  color: textColorBlack,
  fontWeight: FontWeight.w300,
  fontSize: 12,
);

TextStyle buttonTextStyle = GoogleFonts.poppins(
  color: textColorWhite,
  fontWeight: FontWeight.w500,
  fontSize: 16,
);
