import 'package:flutter/material.dart';

abstract class FeatureWidget extends StatefulWidget {
  final FeatureWidgetProps featureWidgetProps;

  Image get previewImage;

  const FeatureWidget({super.key, required this.featureWidgetProps});

  @override
  FeatureState createState();
}

abstract class FeatureState<T extends FeatureWidget> extends State<T> {}

class FeatureWidgetProps {
  final FeatureNavigation navigation;

  const FeatureWidgetProps({required this.navigation});
}

class FeatureNavigation {
  final FeatureNavigationSegment? prev;
  final FeatureNavigationSegment? next;

  const FeatureNavigation({required this.prev, required this.next});
}

class FeatureNavigationSegment {
  final Image Function() getPreview;
  final VoidCallback goto;

  const FeatureNavigationSegment({
    required this.getPreview,
    required this.goto,
  });
}
