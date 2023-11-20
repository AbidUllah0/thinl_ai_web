import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final double letterSpacing;
  TextStyle? style;

   CustomText({
    Key? key,
    this.style,
    required this.text,
    this.fontSize = 16.0,
    this.letterSpacing = 1,
    this.color = AppColors.primary,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}
