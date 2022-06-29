import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/ts.dart';

class ThemeUtils {
  static final ThemeData defaultAppThemeData = appTheme();

  static ThemeData appTheme() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.lato().fontFamily,
      textTheme: TextTheme(
        headline1: Ts.semiBold32(),
        headline2: Ts.semiBold20(),
        headline3: Ts.semiBold18(),
        headline4: Ts.semiBold16(),
        headline5: Ts.semiBold14(),
        headline6: Ts.semiBold12(),
        subtitle1: Ts.medium16(),
        subtitle2: Ts.medium14(),
        bodyText1: Ts.regular14(),
        bodyText2: Ts.regular12(),
        caption: Ts.regular12(),
        button: Ts.bold15(),
      ),
    );
  }
}
