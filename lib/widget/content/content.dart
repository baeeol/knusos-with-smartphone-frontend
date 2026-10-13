import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/content_post.dart';

class Content extends StatelessWidget {
  final ContentBackgroundGradientColors backgroundGradientColors;
  final ContentPost post;

  const Content({
    super.key,
    required this.backgroundGradientColors,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    const double contentTopMargin = 55;
    const double contentHorizontalMargin = 10;
    final LinearGradient backgroundGradient = LinearGradient(
      begin: Alignment(-0.42, 0.90),
      end: Alignment(0.42, -0.90),
      colors: [backgroundGradientColors.bright, backgroundGradientColors.main],
    );

    return Container(
      padding: EdgeInsets.only(
        top: contentTopMargin,
        left: contentHorizontalMargin,
        right: contentHorizontalMargin,
      ),
      decoration: BoxDecoration(gradient: backgroundGradient),
      child: Align(alignment: Alignment.topCenter, child: post),
    );
  }
}

class ContentBackgroundGradientColors {
  final Color bright;
  final Color main;

  const ContentBackgroundGradientColors({
    required this.bright,
    required this.main,
  });
}
