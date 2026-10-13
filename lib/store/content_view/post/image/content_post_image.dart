import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/package.dart';

class ContentPostImage extends StatelessWidget {
  final Image image;

  const ContentPostImage(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    const double horizontalPadding = 10;

    return AspectRatio(
      aspectRatio: 1 / 1.1,
      child: ColoredBox(
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: horizontalPadding),
          child: image,
        ),
      ),
    );
  }
}
