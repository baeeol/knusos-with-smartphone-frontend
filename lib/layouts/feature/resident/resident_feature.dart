import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/layouts/feature/resident/resident_feature_content.dart';
import 'package:knusos_with_smartphone_frontend/constants/palette.constant.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/index.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/sub/feature_buttons.dart';

class ResidentFeature extends FeatureWidget {
  @override
  Image get previewImage => Image.asset('assets/images/test_image3.png');

  const ResidentFeature({super.key, required super.featureWidgetProps});

  @override
  FeatureState<ResidentFeature> createState() => _ResidentFeatureState();
}

class _ResidentFeatureState extends FeatureState<ResidentFeature> {
  @override
  Widget build(BuildContext context) {
    return Feature(
      color: Color(0xffA3DC9A),
      name: '동방? 누가누가 있을까!',
      content: ResidentFeatureContent(),
      navigation: widget.featureWidgetProps.navigation,
      mainText: '5명의 시연이와 나리들',
      subText: '신재훈, 김휘영, 김다영, 김문수',
      timeline: Container(color: Colors.cyan),
      mainButtonData: FeatureMainButtonData(
        color: Color(0xffA3DC9A),
        icon: Icon(Icons.ac_unit_sharp, size: 32, color: Palette.white),
        onPressed: () {},
      ),
    );
  }
}
