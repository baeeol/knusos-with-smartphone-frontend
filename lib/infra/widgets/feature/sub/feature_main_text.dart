import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/infra/constants/palette.constant.dart';

class FeatureMainText extends StatelessWidget {
  final String text;

  const FeatureMainText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 28,
        color: Palette.black,
      ),
    );
  }
}
