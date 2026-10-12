import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/index.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/sub/feature_buttons.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/sub/feature_content_navigator.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/sub/feature_header.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/sub/feature_main_text.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/sub/feature_sub_text.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/sub/feature_timeline.dart';

class Feature extends StatelessWidget {
  final Color color;
  final String name;
  final Widget content;
  final FeatureNavigation navigation;
  final String mainText;
  final String subText;
  final Widget timeline;
  final FeatureMainButtonData mainButtonData;

  const Feature({
    super.key,
    required this.color,
    required this.name,
    required this.content,
    required this.navigation,
    required this.mainText,
    required this.subText,
    required this.timeline,
    required this.mainButtonData,
  });

  Color middleGradientColor(Color topColor) {
    final hsl = HSLColor.fromColor(color);

    return hsl
        .withSaturation(hsl.saturation * 0.45)
        .withLightness(hsl.lightness + (1.0 - hsl.lightness) * 0.65)
        .toColor();
  }

  @override
  Widget build(BuildContext context) {
    const backgroundGradientStops = [0.0, 0.50, 0.77];

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [color, middleGradientColor(color), Colors.white],
          stops: backgroundGradientStops,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(top: 44),
          ), //between safe area and headers
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: FeatureHeader(featureName: name),
          ),
          FeatureContentNavigator(
            content: content,
            navigation: navigation,
            contentPadding: 40,
          ),
          FeatureMainText(mainText),
          SizedBox(height: 4),
          FeatureSubText(subText),
          SizedBox(height: 44),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: FeatureTimeline(child: timeline),
          ),
          SizedBox(height: 40),
          FeatureButtons(
            mainButtonData: mainButtonData,
            navigation: navigation,
          ),
        ],
      ),
    );
  }
}
