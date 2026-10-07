import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/infra/constants/palette.constant.dart';

class FeatureTimeline extends StatelessWidget {
  final Widget child;

  const FeatureTimeline({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 14, child: child);
  }
}

class FeatureTimelineText extends StatelessWidget {
  final String text;

  const FeatureTimelineText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Palette.grey,
        fontWeight: FontWeight.w300,
        fontSize: 14,
      ),
    );
  }
}
