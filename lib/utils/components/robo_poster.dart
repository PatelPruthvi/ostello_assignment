import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_assignment/resources/colors/colors.dart';
import 'package:ostello_assignment/resources/images/image_assets.dart';
import 'package:ostello_assignment/utils/dimensions/dimensions.dart';
import 'package:ostello_assignment/utils/fonts/fonts.dart';

class RoboPoster extends StatelessWidget {
  const RoboPoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(ImageAssets.roboImagePath),
        Container(
          width: double.maxFinite,
          decoration: const BoxDecoration(
              color: AppColors.kmainColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.getScreenWidth(context) * 0.08,
                vertical: Dimensions.getScreenHeight(context) * 0.005),
            child: Column(
              children: [
                Text(
                  "No Guessing, Just Knowing:",
                  textAlign: TextAlign.center,
                  style: FontDecors.getWhiteBoldCharForPosterTextStyle(context),
                ),
                RichText(
                  text: TextSpan(
                    style:
                        FontDecors.getWhiteBoldCharForPosterTextStyle(context),
                    children: <TextSpan>[
                      const TextSpan(text: 'Your '),
                      TextSpan(
                          text: ' Career Path ',
                          style: FontDecors.getWhiteBoldCharForPosterTextStyle(
                                  context)
                              .copyWith(
                                  fontWeight: FontWeight.w900,
                                  backgroundColor: AppColors.kOrangeColor,
                                  color: AppColors.kmainColor)),
                      const TextSpan(text: ' Awaits!'),
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.getScreenHeight(context) * 0.015),
                Text(
                  "Unlock your potential and get an instant report on customised career ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.klightGreytextColor,
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll(4.0),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Start Assesment",
                            style:
                                FontDecors.getWhiteBoldCharForPosterTextStyle(
                                        context)
                                    .copyWith(color: AppColors.kblackColor),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
