import 'package:flutter/material.dart';
import 'package:ostello_assignment/resources/colors/colors.dart';
import 'package:ostello_assignment/utils/dimensions/dimensions.dart';
import 'package:ostello_assignment/utils/fonts/fonts.dart';
import 'package:ostello_assignment/resources/images/image_assets.dart';

class QuickInfoWdgt extends StatelessWidget {
  const QuickInfoWdgt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Quick Info.",
              style: FontDecors.getBlackTitleTextStyle(context)),
        ),
        SizedBox(
          height: Dimensions.getScreenHeight(context) * 0.39,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  width: Dimensions.getScreenWidth(context) * 0.85,
                  decoration: BoxDecoration(
                      color: AppColors.kwhiteColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Career Trends",
                          style:
                              FontDecors.getTileTitleItalicTextStyle(context)),
                      Text(
                          "Those who plan ahead hold the key to the future. Construct a strategic career path today. Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.",
                          style: FontDecors.getBlackDescFontStyle(context)),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.kmainColor),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Center(
                                      child: Text("Explore",
                                          style: FontDecors
                                              .getPurpleTitletextStyle(
                                                  context))),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            ImageAssets.rocketimagePath,
            width: Dimensions.getScreenWidth(context),
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
