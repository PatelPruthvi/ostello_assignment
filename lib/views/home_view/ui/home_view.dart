// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_assignment/resources/colors/colors.dart';
import 'package:ostello_assignment/resources/images/image_assets.dart';
import 'package:ostello_assignment/utils/components/market_place_widget.dart';
import 'package:ostello_assignment/utils/components/quick_info.dart';
import 'package:ostello_assignment/utils/components/robo_poster.dart';
import 'package:ostello_assignment/resources/constants/app_constants.dart';
import 'package:ostello_assignment/utils/components/top_services_wdgt.dart';
import 'package:ostello_assignment/utils/dimensions/dimensions.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _bottomNavIndex = 0;
  List<IconData> iconList = const [
    Icons.home,
    Icons.store_mall_directory_outlined
  ];
  List<String> iconLabel = ["Home", "Marketplace"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 3.0, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, ${AppConstants.appBarName}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: GoogleFonts.lato().fontFamily),
                  ),
                  SizedBox(
                    width: Dimensions.getScreenWidth(context) * 0.51,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.person_search_outlined,
                            color: AppColors.kblackColor,
                          ),
                          Flexible(
                            child: Text(' ${AppConstants.appBarLocation}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: GoogleFonts.lato().fontFamily)),
                          ),
                          const Icon(Icons.keyboard_arrow_down_outlined)
                        ]),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: Dimensions.getScreenWidth(context) * 0.2,
                    height: Dimensions.getScreenHeight(context) * 0.03,
                    decoration: const BoxDecoration(
                        color: AppColors.kmainColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          "5000",
                          style: TextStyle(
                              fontSize: 12,
                              color: AppColors.klightGreytextColor,
                              fontWeight: FontWeight.w600,
                              fontFamily: GoogleFonts.lato().fontFamily),
                        ),
                        Container(
                          width: 20,
                          height: 25,
                          decoration: const BoxDecoration(
                              color: AppColors.klightGreytextColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: Dimensions.getScreenHeight(context) * 0.04,
                        width: Dimensions.getScreenHeight(context) * 0.04,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.kmainColor,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
                            fit: BoxFit.fill,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                height:
                                    Dimensions.getScreenHeight(context) * 0.03,
                                width:
                                    Dimensions.getScreenHeight(context) * 0.03,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.kmainColor,
                                ),
                              );
                            },
                          ),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RoboPoster(),
                  TopServicesWidget(),
                ],
              ),
            ),
            MarketPlaceWidget(),
            QuickInfoWdgt()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.kwhiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: Image.asset(ImageAssets.botfacepath),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        backgroundColor: AppColors.kwhiteColor,
        // icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.sharpEdge,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? AppColors.kblackColor : AppColors.kGreyColor;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[index],
                size: 24,
                color: color,
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  iconLabel[index],
                  maxLines: 1,
                  style: TextStyle(color: color),
                ),
              )
            ],
          );
        },
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}
