// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:neural_trainer/core/constants/app_styles.dart';
import 'package:neural_trainer/core/dimensions/dimensions.dart';
import 'package:neural_trainer/ui/widgets/bottom_widget.dart';

class OnboardWidget extends StatelessWidget {
  const OnboardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.currentPageValue,
      required this.onboardItemsList,
      required this.onPressed});

  final String image;
  final String title;
  final String subtitle;
  final int currentPageValue;
  final onboardItemsList;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: getScreenWidth(20),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(),
          SizedBox(
            height: getScreenHeight(220),
          ),
          Text(
            title,
            style: Styles.greenItalicStyle,
          ),
          SizedBox(
            height: getScreenHeight(20),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: Styles.whiteSubHeadingStyle,
          ),
          SizedBox(
            height: getScreenHeight(70),
          ),
          BottomWidgets(
              onboardItemsList: onboardItemsList,
              currentPageValue: currentPageValue,
              onPressed: onPressed),
        ],
      ),
    );
  }
}
