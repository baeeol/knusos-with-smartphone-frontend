import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/palette.constant.dart';
import 'package:knusos_with_smartphone_frontend/widgets/app/app_icon_button.dart';

class FeatureHeader extends StatelessWidget {
  final String featureName;

  const FeatureHeader({super.key, required this.featureName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 28),
        Column(
          children: [
            _FeatureHeaderSubText(),
            _FeatureHeaderMainText(featureName),
          ],
        ),
        AppIconButton(
          icon: Icon(Icons.more_vert, size: 26, color: Palette.black),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _FeatureHeaderMainText extends StatelessWidget {
  final String text;

  const _FeatureHeaderMainText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Palette.black,
        fontSize: 16,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

class _FeatureHeaderSubText extends StatelessWidget {
  const _FeatureHeaderSubText();

  @override
  Widget build(BuildContext context) {
    return Text(
      '~ Now Using ~',
      style: TextStyle(
        color: Palette.heatherForest,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
