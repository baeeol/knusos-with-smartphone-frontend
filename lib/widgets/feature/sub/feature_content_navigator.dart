import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/feature_widget.dart';

class FeatureContentNavigator extends StatefulWidget {
  final Widget content;
  final double contentPadding;
  final FeatureNavigation navigation;

  const FeatureContentNavigator({
    super.key,
    required this.content,
    required this.contentPadding,
    required this.navigation,
  });

  @override
  State<FeatureContentNavigator> createState() =>
      _FeatureContentNavigatorState();
}

class _FeatureContentNavigatorState extends State<FeatureContentNavigator> {
  late final PageController _featureController;

  bool isFirstFeature() {
    return widget.navigation.prev == null;
  }

  bool isLastFeature() {
    return widget.navigation.next == null;
  }

  bool pageScrollEndNotification(ScrollEndNotification _) {
    if (isFirstFeature() && _featureController.page == 1) {
      widget.navigation.next?.goto();
    } else if (isLastFeature() && _featureController.page == 0) {
      widget.navigation.prev?.goto();
    } else {
      if (_featureController.page == 0) {
        widget.navigation.prev?.goto();
      } else if (_featureController.page == 2) {
        widget.navigation.next?.goto();
      }
    }

    return false;
  }

  @override
  void initState() {
    super.initState();
    _featureController = PageController(initialPage: isFirstFeature() ? 0 : 1);
  }

  @override
  void dispose() {
    _featureController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: NotificationListener<ScrollEndNotification>(
        onNotification: pageScrollEndNotification,
        child: PageView(
          controller: _featureController,
          children: [
            // prev feature
            if (!isFirstFeature())
              _FeatureContentContainer(
                padding: widget.contentPadding,
                child: widget.navigation.prev!.getPreview(),
              ),
            // current feature
            _FeatureContentContainer(
              padding: widget.contentPadding,
              child: widget.content,
            ),
            // next feature
            if (!isLastFeature())
              _FeatureContentContainer(
                padding: widget.contentPadding,
                child: widget.navigation.next!.getPreview(),
              ),
          ],
        ),
      ),
    );
  }
}

class _FeatureContentContainer extends StatelessWidget {
  final Widget child;
  final double padding;

  const _FeatureContentContainer({required this.child, required this.padding});

  @override
  Widget build(BuildContext context) {
    const List<BoxShadow> boxShadow = [
      BoxShadow(
        color: Color.fromRGBO(50, 50, 93, 0.18),
        blurRadius: 5,
        spreadRadius: -1,
        offset: Offset(0, 1),
      ),
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.24),
        blurRadius: 3,
        spreadRadius: -1,
        offset: Offset(0, 1),
      ),
    ];

    return Padding(
      padding: EdgeInsets.all(padding),
      child: Container(
        decoration: BoxDecoration(boxShadow: boxShadow),
        child: ClipRRect(borderRadius: BorderRadius.circular(4), child: child),
      ),
    );
  }
}
