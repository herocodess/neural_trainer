// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:neural_trainer/pages/onboarding1.dart';
import 'package:neural_trainer/pages/widgets/onboard_widget.dart';

class OnboardItem extends StatelessWidget {
  OnboardItem({
    super.key,
    required this.item,
    required this.currentPageValue,
    required this.pageController,
    required this.onboardingItems,
  });

  Map<String, String> item;
  int currentPageValue;
  PageController pageController;
  List<Map<String, String>> onboardingItems;
  @override
  Widget build(BuildContext context) {
    return (currentPageValue == 0)
        ? Onboarding1Page(
            image: onboardingItems[0]['image']!,
            title: onboardingItems[0]['title']!,
            subtitle: onboardingItems[0]['subTitle']!,
            currentPageValue: currentPageValue,
            onboardItemsList: onboardingItems,
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          )
        : OnboardWidget(
            currentPageValue: currentPageValue,
            onboardItemsList: onboardingItems,
            image: item['image']!,
            title: item['title']!,
            subtitle: item['subTitle']!,
            onPressed: () {
              if (currentPageValue == onboardingItems.length - 1) {
              } else {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              }
            },
          );
  }
}
