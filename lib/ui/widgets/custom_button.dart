import 'package:flutter/material.dart';
import 'package:neural_trainer/core/constants/app_colors.dart';
import 'package:neural_trainer/core/constants/app_styles.dart';
import 'package:neural_trainer/core/dimensions/dimensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.buttonColor,
    this.textColor,
    this.isOutlined = false,
    this.isLoading = false,
    this.fontSize,
    this.radius,
    this.fontWeight,
  }) : super(key: key);

  final void Function()? onPressed;
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final bool? isOutlined;
  final double? radius;
  final bool isLoading;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.maxFinite,
        height: getScreenHeight(52),
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(radius ?? 4),
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: Styles.buttonStyle,
          ),
        ),
      ),
    );
  }
}
