import 'package:flutter/material.dart';
import 'package:portafolio_web/utils/utils.dart';

class DisplayWhiteText extends StatelessWidget {
  const DisplayWhiteText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headlineSmall?.copyWith(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
    );
  }
}
