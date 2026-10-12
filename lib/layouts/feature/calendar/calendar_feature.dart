import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/layouts/feature/calendar/calendar_feature_content.dart';
import 'package:knusos_with_smartphone_frontend/constants/palette.constant.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/index.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/sub/feature_buttons.dart';

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
      color: Color(0xffFFEA88),
      name: '현시연, 우리의 추억',
      content: CalendarFeatureContent(),
      navigation: widget.featureWidgetProps.navigation,
      mainText: '2026년 10월 6일',
      subText: '오늘 1개, 이번주 3개, 이번달 6개',
      timeline: Container(color: Colors.amber),
      mainButtonData: FeatureMainButtonData(
        color: Color(0xffFFEA88),
        icon: Icon(Icons.add, size: 36, color: Palette.black, weight: 12),
        onPressed: () {},
      ),
    );
  }
}
