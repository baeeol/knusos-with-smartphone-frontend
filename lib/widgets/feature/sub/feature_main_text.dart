import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/palette.constant.dart';

class FeatureMainText extends StatelessWidget {
  static FontWeight weight = FontWeight.w900;
  static double size = 28;
  static Color color = Palette.black;

  final String text;

  const FeatureMainText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: weight, fontSize: size, color: color),
    );
  }
}
