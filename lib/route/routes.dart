import 'package:flutter/material.dart';
import 'package:neural_trainer/pages/onboarding_main.dart';

const String onboardingMainPage = '/';

Route<dynamic> controller(RouteSettings settings) {
  //use settings.arguments to pass arguments in pages

  switch (settings.name) {
    case onboardingMainPage:
      return MaterialPageRoute(
        builder: (context) => const OnboardingMainScreen(),
      );

    default:
      throw 'This route name does not exit';
  }
}
