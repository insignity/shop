import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'app_colors.dart';
part 'app_button_styles.dart';
part 'app_text_theme.dart';

class AppThemes {
  AppThemes._();
  static final mobile = ThemeData(
    errorColor: AppColors.error,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ColorScheme.fromSwatch(
      accentColor:
          AppColors.green.shade90, // but now it should be declared like this
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.green.shade90,
    ),
    primaryColor: AppColors.green.shade90,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.grey.shade50,
      selectedLabelStyle: AppTextTheme.mobile.badge,
      unselectedLabelStyle: AppTextTheme.mobile.badge,
      selectedItemColor: AppColors.green.shade90,
      unselectedItemColor: AppColors.gray.shade50,
    ),
    appBarTheme: AppBarTheme(
      color: AppColors.green.shade90,
      titleTextStyle: AppTextTheme.mobile.h4,
      systemOverlayStyle: SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent),
      toolbarHeight: 50,
      titleSpacing: 16,
      elevation: 0,
      centerTitle: true,
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    dividerTheme: DividerThemeData(
      thickness: 1.0,
      color: AppColors.gray.shade20,
      indent: 0.0,
      space: 1.0,
    ),
    fontFamily: AppFonts.montserrat,
    textTheme: AppTextTheme.mobile.apply(
      displayColor: AppColors.gray.shade100,
      bodyColor: AppColors.gray.shade100,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppButtonStyles.primary,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: AppButtonStyles.primary,
    ),
    textButtonTheme: TextButtonThemeData(
      style: AppButtonStyles.primary,
    ),
  );
}
