import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/app/app_design.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/feature/feature_widget.dart';

class FeatureContentNavigator extends StatefulWidget {
  final Widget content;
  final FeatureNavigation navigation;

  const FeatureContentNavigator({
    super.key,
    required this.content,
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
        onNotification: (_) {
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
        },
        child: PageView(
          controller: _featureController,
          children: [
            if (!isFirstFeature())
              _FeatureContentContainer(
                child: widget.navigation.prev!.getPreview(),
              ),

            _FeatureContentContainer(child: widget.content),

            if (!isLastFeature())
              _FeatureContentContainer(
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

  const _FeatureContentContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppHorizontalPadding.padding),
      child: ClipRRect(borderRadius: BorderRadius.circular(18), child: child),
    );
  }
}
