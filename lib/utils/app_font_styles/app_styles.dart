import 'dart:ui';

import '../app_colors/colors.dart';

class AppTextStyles {
  static TextStyle drawerTextColor = TextStyle(
    fontFamily: 'Source Sans Pro',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textGreyColor,
  );

  ///Button Text Style
  static TextStyle btnStyle = TextStyle(
    fontFamily: 'Source Sans Pro',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textGreyColor,
  );

  // heading Style
  static TextStyle mainHeadingStyle = TextStyle(
    color: AppColors.primary,
    fontSize: 28,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 0,
  );
}
