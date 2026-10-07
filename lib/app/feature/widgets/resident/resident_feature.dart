import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/app/feature/widgets/resident/layouts/resident_feature_content.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/feature/index.dart';

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
      name: '동방? 누가누가 있을까!',
      content: ResidentFeatureContent(),
      navigation: widget.featureWidgetProps.navigation,
      mainText: 'resident feature main text',
      subText: 'resident feature sub text',
      timeline: Text('resident feature timeline'),
    );
  }
}
