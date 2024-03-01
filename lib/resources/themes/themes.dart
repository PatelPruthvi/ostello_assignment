import 'package:flutter/material.dart';
import 'package:ostello_assignment/resources/colors/colors.dart';

class Themes {
  static ThemeData getTheme(BuildContext context) => ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.klightGreytextColor,
          shape:
              Border(bottom: BorderSide(color: AppColors.kGreyColor, width: 1)),
          iconTheme: IconThemeData(color: AppColors.kmainColor)),
      scaffoldBackgroundColor: AppColors.klightGreytextColor);
}
