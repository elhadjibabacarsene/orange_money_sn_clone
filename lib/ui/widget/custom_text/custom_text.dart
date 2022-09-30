import 'package:flutter/material.dart';

import '../../../constant/fonts/fonts.dart';

enum TextType { h1, h2, h3, bigTitle, title, bigButton, paragraph, smallText }

enum FontFamilyWeight { bold, semiBold, regular }


class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
        required this.text,
        required this.textType,
        this.color = Colors.black})
      : super(key: key);

  final String text;
  final TextType textType;
  final Color color;

  double getFontSize() {
    switch (textType) {
      case TextType.h1:
        return 36;
      case TextType.h2:
        return 32;
      case TextType.h3:
        return 24;
      case TextType.bigTitle:
        return 20;
      case TextType.title:
        return 16;
      case TextType.paragraph:
      case TextType.bigButton:
        return 14;
      default:
        return 12;
    }
  }

  FontWeight getFontFamilyWeight(FontFamilyWeight fontFamilyWeight) {
    switch (fontFamilyWeight) {
      case FontFamilyWeight.bold:
        return FontWeight.w700;
      case FontFamilyWeight.semiBold:
        return FontWeight.w600;
      default:
        return FontWeight.w400;
    }
  }

  getFontWeight() {
    switch (textType) {
      case TextType.h1:
      case TextType.h2:
      case TextType.h3:
      case TextType.bigTitle:
      case TextType.title:
      case TextType.bigButton:
        return getFontFamilyWeight(FontFamilyWeight.bold);
      default:
        return getFontFamilyWeight(FontFamilyWeight.regular);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamilyName,
        fontWeight: getFontWeight(),
        fontSize: getFontSize(),
        color: color,
      ),
    );
  }
}
