import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/package.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/package.dart';

class ContentPost extends StatelessWidget {
  final ContentPostProfile profile;
  final ContentPostCharacter character;
  final ContentPostImage image;
  final ContentPostActionBar actionBar;

  const ContentPost({
    super.key,
    required this.profile,
    required this.character,
    required this.image,
    required this.actionBar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: AppColors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              image,
              profile,
              Positioned.fill(child: character),
            ],
          ),
          actionBar,
          // comment,
        ],
      ),
    );
  }
}
