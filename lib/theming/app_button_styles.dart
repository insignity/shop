part of 'app_themes.dart';

abstract class AppButtonStyles {
  AppButtonStyles._();
  static final primary = ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      elevation: const MaterialStatePropertyAll(0),
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      visualDensity: VisualDensity.standard,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AppColors.white.shade100;
        }
        return null;
      }),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.hovered) ||
            states.contains(MaterialState.pressed)) {
          return AppColors.green.shade100;
        }
      }),
      side: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.hovered) ||
            states.contains(MaterialState.pressed)) return null;
        Color color = AppColors.green.shade90;
        if (states.contains(MaterialState.disabled)) {
          color = AppColors.gray.shade40;
        }
        return BorderSide(color: color);
      }));
}
