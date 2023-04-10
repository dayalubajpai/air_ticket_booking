import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = Color(0xFF687daf);

class Styles{
  static Color primarycolor = primary;
  static Color textcolor = Color(0xFF3b3b3b);
  static Color bgcolor = Color(0xFFeeedf2);
  static Color orangecolor = Color(0xFFFF5267);
  static Color subheading = Colors.grey.shade500;
  static TextStyle textStyle1 = TextStyle(fontSize: 16, color: textcolor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = TextStyle(fontSize: 24, color: textcolor, fontWeight: FontWeight.bold, fontFamily: GoogleFonts.lato().fontFamily);
  static TextStyle headLineStyle2 = TextStyle(fontSize: 21, color: textcolor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(fontSize: 17, color: subheading, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(fontSize: 14, color: subheading, fontWeight: FontWeight.w500);
}