import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum TypeText { b28, b24, b18, sm16, r16, m14 }

FontWeight getFontWeight(TypeText typeText) {
  FontWeight fontWeight = FontWeight.normal;
  switch (typeText) {
    case TypeText.b28:
    case TypeText.b24:
    case TypeText.b18:
      fontWeight = FontWeight.w700;
      break;
    case TypeText.sm16:
      fontWeight = FontWeight.w600;
      break;
    case TypeText.r16:
      fontWeight = FontWeight.w400;
      break;
    case TypeText.m14:
      fontWeight = FontWeight.w500;
      break;
  }

  return fontWeight;
}

double getFontSize(TypeText typeText) {
  double fontSize = 14;
  switch (typeText) {
    case TypeText.b28:
      fontSize = 28;
      break;
    case TypeText.b24:
      fontSize = 24;
      break;
    case TypeText.b18:
      fontSize = 18;
      break;
    case TypeText.sm16:
    case TypeText.r16:
      fontSize = 16;
      break;
    case TypeText.m14:
      fontSize = 14;
      break;
  }
  return fontSize;
}

TextStyle customStyle({
  required TypeText typeText,
  Color color = Colors.black,
}) {
  return GoogleFonts.manrope(
      fontWeight: getFontWeight(typeText),
      fontSize: getFontSize(typeText),
      color: color);
}
