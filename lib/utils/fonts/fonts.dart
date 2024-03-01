import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_assignment/resources/colors/colors.dart';
import 'package:ostello_assignment/utils/dimensions/dimensions.dart';

class FontDecors {
  static List<BoxShadow> shadowElement = List.filled(
      1,
      BoxShadow(
        color: Colors.black.withAlpha(40),
        spreadRadius: 0.1,
        blurRadius: 6,
        offset: const Offset(2, 3),
      ));
  static TextStyle getWhiteBoldCharForPosterTextStyle(BuildContext context) =>
      TextStyle(
          color: AppColors.kwhiteColor,
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.getScreenWidth(context) * 0.055,
          fontFamily: GoogleFonts.lato().fontFamily);
  static TextStyle getBlackDescFontStyle(BuildContext context) => TextStyle(
      color: AppColors.kblackColor,
      fontWeight: FontWeight.normal,
      fontSize: Dimensions.getScreenWidth(context) * 0.038,
      fontFamily: GoogleFonts.lato().fontFamily);

  static TextStyle getPurpleTitletextStyle(BuildContext context) => TextStyle(
      color: AppColors.kmainColor,
      fontWeight: FontWeight.w700,
      fontSize: Dimensions.getScreenWidth(context) * 0.048,
      fontFamily: GoogleFonts.lato().fontFamily);

  static TextStyle getBlackTitleTextStyle(BuildContext context) =>
      FontDecors.getWhiteBoldCharForPosterTextStyle(context)
          .copyWith(color: Colors.black);

  static TextStyle getTileTitleItalicTextStyle(BuildContext context) =>
      TextStyle(
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic,
          fontSize: Dimensions.getScreenWidth(context) * 0.048,
          fontFamily: GoogleFonts.lato().fontFamily);
  static TextStyle getNormalStyleForMarketPlaceTile(BuildContext context) =>
      TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: Dimensions.getScreenWidth(context) * 0.04,
          fontFamily: GoogleFonts.lato().fontFamily);
}
