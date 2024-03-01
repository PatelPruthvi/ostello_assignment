import 'package:flutter/material.dart';

class Dimensions {
  static double getScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double getTopServicesTileWidth(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.45;
}
