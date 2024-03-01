import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_assignment/resources/colors/colors.dart';
import 'package:ostello_assignment/resources/images/image_assets.dart';
import 'package:ostello_assignment/utils/components/service_tile.dart';
import 'package:ostello_assignment/utils/dimensions/dimensions.dart';
import 'package:ostello_assignment/utils/fonts/fonts.dart';

class TopServicesWidget extends StatelessWidget {
  const TopServicesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.getScreenHeight(context) * 0.015),
          child: Text("Top Services",
              style: FontDecors.getBlackTitleTextStyle(context)),
        ),
        const Row(children: [
          ServiceTile(
              imagePath: ImageAssets.careerTrendsPath, title: "Career Trends "),
          SizedBox(width: 10),
          ServiceTile(
              imagePath: ImageAssets.scholarshipPath, title: "Scholarships"),
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: FontDecors.shadowElement,
                color: AppColors.ktileColor,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Your Career roadmap",
                          style:
                              FontDecors.getTileTitleItalicTextStyle(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Those who plan ahead hold the key to the future. Construct a.",
                            style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: Dimensions.getScreenWidth(context) * .35,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: AppColors.kmainColor),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Center(
                                          child: Text("Create Now",
                                              style: FontDecors
                                                  .getPurpleTitletextStyle(
                                                      context))),
                                    ),
                                    const Icon(Icons.arrow_forward_ios,
                                        color: AppColors.kmainColor)
                                  ],
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: Dimensions.getScreenWidth(context) * 0.3,
                          height: Dimensions.getScreenWidth(context) * 0.3,
                          decoration: BoxDecoration(
                              color: AppColors.kdarkTileColor,
                              borderRadius: BorderRadius.only(
                                  bottomRight: const Radius.circular(15),
                                  topLeft: Radius.circular(
                                    Dimensions.getScreenWidth(context) * 0.3,
                                  ))),
                        ),
                      ),
                      Image.asset(ImageAssets.arrowImagePath),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: Dimensions.getScreenHeight(context) * 0.035),
        Container(
          decoration: BoxDecoration(
              boxShadow: FontDecors.shadowElement,
              color: AppColors.kwhiteColor,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Refer & Earn",
                        style: FontDecors.getBlackTitleTextStyle(context),
                      ),
                      Text(
                          "Invite a friend to ostello and earn ₹1000 worth coins.",
                          style: TextStyle(
                              fontFamily: GoogleFonts.lato().fontFamily)),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.asset(ImageAssets.walletImagePath),
              )
            ],
          ),
        ),
      ],
    );
  }
}
