import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/package.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/package.dart';

class ContentPostActionBar extends StatelessWidget {
  final List<ContentPostActionButton> buttons;

  const ContentPostActionBar({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    const double bottomPadding = 6;
    const double iconSize = 30;

    return Padding(
      padding: EdgeInsetsGeometry.fromLTRB(
        AppLayout.horizontalPadding,
        bottomPadding + 6,
        AppLayout.horizontalPadding,
        bottomPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(spacing: 15, children: buttons),
          Icon(Icons.bookmark_border, size: iconSize),
        ],
      ),
    );
  }
}
