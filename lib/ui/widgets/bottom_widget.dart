// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:neural_trainer/core/dimensions/dimensions.dart';
import 'package:neural_trainer/ui/widgets/circle_bar_widget.dart';
import 'package:neural_trainer/ui/widgets/custom_button.dart';

class BottomWidgets extends StatelessWidget {
  BottomWidgets(
      {super.key,
      required this.onPressed,
      required this.onboardItemsList,
      required this.currentPageValue});

  Function()? onPressed;
  final int currentPageValue;
  final onboardItemsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (int i = 0; i < onboardItemsList.length; i++)
              if (i == currentPageValue) ...[
                Row(
                  children: [
                    CircleBar(isActive: true),
                    SizedBox(
                      width: getScreenWidth(10),
                    ),
                  ],
                ),
              ] else
                Row(
                  children: [
                    CircleBar(isActive: false),
                    SizedBox(
                      width: getScreenWidth(10),
                    ),
                  ],
                ),
          ],
        ),
        SizedBox(
          height: getScreenHeight(30),
        ),
        CustomButton(
          onPressed: onPressed,
          text: 'iniciar sesión',
          radius: 27,
        ),
        SizedBox(
          height: getScreenHeight(50),
        ),
      ],
    );
  }
}
