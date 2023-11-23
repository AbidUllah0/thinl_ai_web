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
  static TextStyle font14To400 = TextStyle(
    fontFamily: 'Source Sans Pro',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textGreyColor,
  );
  static TextStyle font26To600 = TextStyle(
    fontFamily: 'Source Sans Pro',
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );
}
