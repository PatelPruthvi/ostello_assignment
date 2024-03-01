import 'package:flutter/material.dart';
import 'package:ostello_assignment/resources/colors/colors.dart';
import 'package:ostello_assignment/utils/dimensions/dimensions.dart';
import 'package:ostello_assignment/utils/fonts/fonts.dart';

class MarketPlaceTile extends StatelessWidget {
  final BorderRadius borRa;
  final String imagePath;
  final String title;
  const MarketPlaceTile(
      {Key? key,
      required this.borRa,
      required this.imagePath,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: Dimensions.getScreenHeight(context) * 0.15,
        decoration: BoxDecoration(
            color: AppColors.ktileColor,
            borderRadius: borRa,
            border: Border.all(color: AppColors.kdarkTileColor)),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(
                  imagePath,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(title,
                  textAlign: TextAlign.center,
                  style: FontDecors.getNormalStyleForMarketPlaceTile(context)),
            )
          ],
        ),
      ),
    );
  }
}
