// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:neural_trainer/core/constants/app_colors.dart';
import 'package:neural_trainer/core/dimensions/dimensions.dart';

class CircleBar extends StatelessWidget {
  CircleBar({Key? key, required this.isActive}) : super(key: key);
  bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: getScreenHeight(8),
      width: getScreenWidth(8),
      decoration: BoxDecoration(
        color: isActive ? AppColors.transparentColor : AppColors.greyColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
        border: Border.all(
            color:
                isActive ? AppColors.primaryColor : AppColors.transparentColor),
      ),
    );
  }
}
