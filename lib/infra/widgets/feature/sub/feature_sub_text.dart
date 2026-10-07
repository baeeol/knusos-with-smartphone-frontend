import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/infra/constants/palette.constant.dart';

class FeatureSubText extends StatelessWidget {
  final String text;

  const FeatureSubText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: Palette.grey,
      ),
    );
  }
}
