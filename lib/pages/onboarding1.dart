// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:neural_trainer/core/constants/app_styles.dart';
import 'package:neural_trainer/core/constants/image_constants.dart';
import 'package:neural_trainer/core/dimensions/dimensions.dart';
import 'package:neural_trainer/ui/widgets/bottom_widget.dart';

class Onboarding1Page extends StatelessWidget {
  const Onboarding1Page({
    super.key,
    required this.onPressed,
    required this.currentPageValue,
    required this.onboardItemsList,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final int currentPageValue;
  final onboardItemsList;
  final Function()? onPressed;
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: getScreenWidth(20),
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(home),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(),
            SizedBox(
              height: getScreenHeight(100),
            ),
            Image.asset(
              image,
              height: getScreenHeight(48),
              width: getScreenWidth(171),
            ),
            SizedBox(
              height: getScreenHeight(120),
            ),
            Text(
              title,
              style: Styles.whiteItalicStyle,
            ),
            SizedBox(
              height: getScreenHeight(10),
            ),
            Text(
              subtitle,
              style: Styles.greenItalicStyle,
            ),
            SizedBox(
              height: getScreenHeight(40),
            ),
            BottomWidgets(
              onboardItemsList: onboardItemsList,
              currentPageValue: currentPageValue,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
