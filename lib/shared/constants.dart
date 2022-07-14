import 'package:flutter/material.dart';

class CustomTheme {
  static const Color primaryColor = Color(0xff000C7B);

  static const Color borderColor = Color.fromARGB(255, 219, 219, 219);

  static const Color disableFontColor = Color(0xffBCBCBC);

  static const Color fontColor = Color(0xff808080);
}

class FontSizes {
  static const double scale = 1;

  static const double s9 = 9 * scale;

  static const double s11 = 11 * scale;

  static const double s12 = 12 * scale;

  static const double s13 = 13 * scale;

  static const double s14 = 14 * scale;

  static const double s15 = 15 * scale;

  static const double s16 = 16 * scale;

  static const double s18 = 18 * scale;

  static const double s20 = 20 * scale;

  static const double s22 = 22 * scale;

  static const double s24 = 24 * scale;

  static const double s26 = 26 * scale;

  static const double s32 = 32 * scale;
}

class Fonts {
  static const String montSerrat = "Arboria";
}

class TextStyles {
  static const TextStyle hintTextStyle = TextStyle(
    color: CustomTheme.borderColor,
  );

  static const primaryBolds14 = TextStyle(
    fontSize: FontSizes.s14,
    fontWeight: FontWeight.bold,
    color: CustomTheme.primaryColor,
  );

  static const primaryBolds16 = TextStyle(
    fontSize: FontSizes.s16,
    fontWeight: FontWeight.bold,
    color: CustomTheme.primaryColor,
  );

  static const primaryBolds20 = TextStyle(
    fontSize: FontSizes.s20,
    fontWeight: FontWeight.bold,
    color: CustomTheme.primaryColor,
  );

  static const primaryBolds32 = TextStyle(
    fontSize: FontSizes.s32,
    fontWeight: FontWeight.bold,
    color: CustomTheme.primaryColor,
  );

  static const fontColorNormals12 = TextStyle(
    fontSize: FontSizes.s12,
    fontWeight: FontWeight.w400,
    color: CustomTheme.fontColor,
  );

  static const TextStyle whiteBolds14 = TextStyle(
    fontSize: FontSizes.s14,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static const TextStyle whiteBolds20 = TextStyle(
    fontSize: FontSizes.s20,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}

class BorderStyles {
  static const double s10 = 10.0;

  static OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(s10),
    borderSide: const BorderSide(
      color: CustomTheme.primaryColor,
      width: 1.5,
    ),
  );

  static OutlineInputBorder disabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(s10),
    borderSide: const BorderSide(
      width: 1.5,
      color: CustomTheme.borderColor,
    ),
  );
}

class BoxShadows {
  static BoxShadow defaulShadow = BoxShadow(
    color: Colors.black.withOpacity(0.15),
    spreadRadius: 1.5,
    blurRadius: 7,
    offset: const Offset(5, 5),
  );
}
