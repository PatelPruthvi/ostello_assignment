import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_assignment/resources/colors/colors.dart';
import 'package:ostello_assignment/resources/images/image_assets.dart';
import 'package:ostello_assignment/utils/components/market_place_tile.dart';
import 'package:ostello_assignment/utils/dimensions/dimensions.dart';
import 'package:ostello_assignment/utils/fonts/fonts.dart';

class MarketPlaceWidget extends StatelessWidget {
  const MarketPlaceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: Dimensions.getScreenHeight(context) * 0.035,
              bottom: Dimensions.getScreenHeight(context) * 0.015,
              left: 15,
              right: 15),
          child: Text("Marketplace",
              style: FontDecors.getBlackTitleTextStyle(context)),
        ),
        const QuadrupleTile(),
        Padding(
          padding: EdgeInsets.only(
              top: Dimensions.getScreenHeight(context) * 0.035,
              bottom: Dimensions.getScreenHeight(context) * 0.005),
          child: SizedBox(
            width: Dimensions.getScreenWidth(context),
            height: Dimensions.getScreenHeight(context) * 0.15,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IntrinsicHeight(
                    child: Container(
                      width: Dimensions.getScreenWidth(context) * 0.85,
                      decoration: BoxDecoration(
                          color: AppColors.kgreenColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Refer & Earn",
                                      style: FontDecors
                                          .getWhiteBoldCharForPosterTextStyle(
                                              context)),
                                  Text(
                                    "Invite a friend to ostello and earn ₹1000 worth coins.",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.lato().fontFamily,
                                        color: AppColors.klightGreytextColor),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(ImageAssets.referEarnPath)
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class QuadrupleTile extends StatelessWidget {
  const QuadrupleTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: Dimensions.getScreenWidth(context) * 0.63,
              child: const Column(
                children: [
                  Row(children: [
                    Expanded(
                      child: MarketPlaceTile(
                        borRa: BorderRadius.only(topLeft: Radius.circular(15)),
                        imagePath: ImageAssets.markettile1,
                        title: "Verified Coaching",
                      ),
                    ),
                    Expanded(
                      child: MarketPlaceTile(
                          borRa:
                              BorderRadius.only(topRight: Radius.circular(15)),
                          imagePath: ImageAssets.markettile2,
                          title: "Lowest prices"),
                    ),
                  ]),
                  Row(children: [
                    Expanded(
                      child: MarketPlaceTile(
                        borRa:
                            BorderRadius.only(bottomLeft: Radius.circular(15)),
                        imagePath: ImageAssets.markettile3,
                        title: "Free Career Check",
                      ),
                    ),
                    Expanded(
                      child: MarketPlaceTile(
                          borRa: BorderRadius.only(
                              bottomRight: Radius.circular(15)),
                          imagePath: ImageAssets.markettile4,
                          title: "Progress Tracking"),
                    ),
                  ]),
                ],
              ),
            ),
            const SizedBox(width: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                ImageAssets.marketplace2,
                width: 400,
                height: Dimensions.getScreenHeight(context) * 0.3,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
