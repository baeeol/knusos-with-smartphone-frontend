import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/package.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/profile/description/content_post_profile_description.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/profile/image/content_post_profile_image.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/profile/name/content_post_profile_name.dart';

class ContentPostProfile extends StatelessWidget {
  final Image image;
  final String name;
  final String description;

  const ContentPostProfile({
    super.key,
    required this.image,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    const double height = 60;
    const double verticalPadding = 8;

    return Container(
      height: height,
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: AppLayout.horizontalPadding,
      ),
      decoration: BoxDecoration(color: AppColors.white),
      child: Row(
        spacing: 8,
        children: [
          ContentPostProfileImage(image),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContentPostProfileName(name),
              ContentPostProfileDescription(description),
            ],
          ),
        ],
      ),
    );
  }
}
