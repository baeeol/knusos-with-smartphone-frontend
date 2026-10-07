import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/app/app_design.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/feature/index.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/feature/sub/feature_content_navigator.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/feature/sub/feature_header.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/feature/sub/feature_main_text.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/feature/sub/feature_sub_text.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/feature/sub/feature_timeline.dart';

class Feature extends StatelessWidget {
  final String name;
  final Widget content;
  final FeatureNavigation navigation;
  final String mainText;
  final String subText;
  final Widget timeline;

  const Feature({
    super.key,
    required this.name,
    required this.content,
    required this.navigation,
    required this.mainText,
    required this.subText,
    required this.timeline,
  });

  @override
  Widget build(BuildContext context) {
    return AppVerticalPadding(
      child: Column(
        children: [
          AppHorizontalPadding(child: FeatureHeader(featureName: name)),
          FeatureContentNavigator(content: content, navigation: navigation),
          AppHorizontalPadding(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FeatureMainText(mainText),
                FeatureSubText(subText),
                FeatureTimeline(child: timeline),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
