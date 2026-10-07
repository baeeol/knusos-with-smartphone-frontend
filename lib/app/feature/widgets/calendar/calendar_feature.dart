import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/app/feature/widgets/calendar/layout/calendar_feature_content.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/feature/index.dart';

class CalendarFeature extends FeatureWidget {
  @override
  Image get previewImage => Image.asset('assets/images/test_image4.png');

  const CalendarFeature({super.key, required super.featureWidgetProps});

  @override
  FeatureState<CalendarFeature> createState() => _CalendarFeatureState();
}

class _CalendarFeatureState extends FeatureState<CalendarFeature> {
  @override
  Widget build(BuildContext context) {
    return Feature(
      name: '현시연, 우리의 추억',
      content: CalendarFeatureContent(),
      navigation: widget.featureWidgetProps.navigation,
      mainText: 'calendar feature main text',
      subText: 'calendar feature sub text',
      timeline: Text('calendar feature timeline'),
    );
  }
}
