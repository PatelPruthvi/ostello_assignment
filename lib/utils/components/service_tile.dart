// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ostello_assignment/resources/colors/colors.dart';
import 'package:ostello_assignment/utils/dimensions/dimensions.dart';
import 'package:ostello_assignment/utils/fonts/fonts.dart';

class ServiceTile extends StatelessWidget {
  final String imagePath;
  final String title;
  const ServiceTile({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: Dimensions.getTopServicesTileWidth(context) * 0.85,
          decoration: BoxDecoration(
            boxShadow: FontDecors.shadowElement,
            borderRadius: BorderRadius.circular(15),
            color: AppColors.ktileColor,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                left: 0,
                child: Container(
                  width: Dimensions.getScreenWidth(context) * 0.2,
                  height: Dimensions.getScreenWidth(context) * 0.2,
                  decoration: BoxDecoration(
                      color: AppColors.kdarkTileColor,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(15),
                          bottomRight: Radius.circular(
                            Dimensions.getScreenWidth(context) * 0.2,
                          ))),
                ),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(imagePath),
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                          fontFamily: GoogleFonts.lato().fontFamily),
                    )
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
