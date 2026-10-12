import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/palette.constant.dart';

class FeatureSubText extends StatelessWidget {
  static FontWeight weight = FontWeight.w600;
  static double size = 14;
  static Color color = Palette.heatherForest;

  final String text;

  const FeatureSubText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: weight, fontSize: size, color: color),
    );
  }
}
