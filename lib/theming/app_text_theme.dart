part of 'app_themes.dart';

abstract class AppFonts {
  static const String montserrat = 'Montserrat';
}

class AppTextTheme {
  static const mobile = TextTheme(
    headline1: TextStyle(
      fontFamily: AppFonts.montserrat,
      fontWeight: FontWeight.w700,
      fontSize: 26,
      height: 34 / 26,
    ),
    headline2: TextStyle(
      fontFamily: AppFonts.montserrat,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      height: 26 / 20,
    ),
    headline3: TextStyle(
      fontFamily: AppFonts.montserrat,
      fontWeight: FontWeight.w700,
      fontSize: 18,
      height: 23 / 18,
    ),
    headline4: TextStyle(
      fontFamily: AppFonts.montserrat,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      height: 23 / 18,
    ),
    headline5: TextStyle(
      fontFamily: AppFonts.montserrat,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      height: 19 / 16,
    ),
    subtitle1: TextStyle(
      fontFamily: AppFonts.montserrat,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      height: 19 / 15,
    ),
    bodyText1: TextStyle(
      fontFamily: AppFonts.montserrat,
      fontWeight: FontWeight.w400,
      fontSize: 15,
      height: 19 / 15,
    ),
    subtitle2: TextStyle(
      fontFamily: AppFonts.montserrat,
      fontWeight: FontWeight.w400,
      fontSize: 13,
      height: 17 / 13,
    ),
    bodyText2: TextStyle(
      fontFamily: AppFonts.montserrat,
      fontWeight: FontWeight.w600,
      fontSize: 11,
      height: 13 / 11,
    ),
  );
}

extension AppTextThemeExtension on TextTheme {
  TextStyle? get subtitle => subtitle1;
  TextStyle? get p => bodyText1;
  TextStyle? get ps => p?.semiBold;
  TextStyle? get pu => p?.underline;
  TextStyle? get psu => ps?.underline;
  TextStyle? get label => subtitle2;
  TextStyle? get badge => bodyText2;
  TextStyle? get h1 => headline1;
  TextStyle? get h2 => headline2;
  TextStyle? get h3 => headline3;
  TextStyle? get h4 => headline4;
  TextStyle? get h5 => headline5;
  TextStyle? get h6 => headline6;
}

extension AppTextStyleExtension on TextStyle {
  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.bold);
  }

  TextStyle get semiBold {
    return copyWith(fontWeight: FontWeight.w600);
  }

  TextStyle get regular {
    return copyWith(fontWeight: FontWeight.normal);
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle get italic {
    return copyWith(fontStyle: FontStyle.italic);
  }

  TextStyle get underline {
    return copyWith(decoration: TextDecoration.underline);
  }

  double? get lineHeight {
    return fontSize != null && height != null ? fontSize! * height! : null;
  }

  TextStyle opacity(int percent) {
    assert(percent >= 0 && percent <= 100);
    return copyWith(color: color?.withOpacity(percent / 100.0));
  }

  TextStyle size(double size) {
    return copyWith(fontSize: size);
  }

  TextStyle weight(FontWeight weight) {
    return copyWith(fontWeight: weight);
  }

  TextStyle fontStyle(FontStyle fontStyle) {
    return copyWith(fontStyle: fontStyle);
  }

  TextStyle operator +(Color? color) {
    return copyWith(color: color);
  }
}
