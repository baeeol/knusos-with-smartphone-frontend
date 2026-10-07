import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/infra/constants/palette.constant.dart';

class FeatureHeader extends StatelessWidget {
  final String featureName;

  const FeatureHeader({super.key, required this.featureName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_arrow_down, size: 30),
        ),
        Column(
          children: [
            Text(
              '재생 중',
              style: TextStyle(
                color: Palette.grey,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              featureName,
              style: TextStyle(
                color: Palette.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, size: 28)),
      ],
    );
  }
}
