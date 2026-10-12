import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knusos_with_smartphone_frontend/riverpod/feature/index.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/index.dart';

class FeatureView extends ConsumerStatefulWidget {
  final List<
    FeatureWidget Function({
      Key? key,
      required FeatureWidgetProps featureWidgetProps,
    })
  >
  features;

  const FeatureView({super.key, required this.features});

  @override
  ConsumerState<FeatureView> createState() => _FeatureViewState();
}

class _FeatureViewState extends ConsumerState<FeatureView> {
  @override
  void initState() {
    super.initState();
    ref
        .read(featureViewProvider.notifier)
        .registerFeatures(createFeatureWidgetList(ref, widget.features));
  }

  @override
  Widget build(BuildContext context) {
    final featureViewState = ref.watch(featureViewProvider);

    return featureViewState.features[featureViewState.current];
  }
}

List<FeatureWidget> createFeatureWidgetList(
  WidgetRef ref,
  List<
    FeatureWidget Function({
      Key? key,
      required FeatureWidgetProps featureWidgetProps,
    })
  >
  constructors,
) {
  List<FeatureWidget> result = [];
  for (int i = 0; i < constructors.length; i++) {
    result.add(
      constructors[i](
        featureWidgetProps: FeatureWidgetProps(
          navigation: FeatureNavigation(
            prev: i > 0
                ? FeatureNavigationSegment(
                    getPreview: () =>
                        ref
                            .read(featureViewProvider.notifier)
                            .getPrevPreview() ??
                        Image.asset('assets/test_image6.png'),
                    goto: () =>
                        ref.read(featureViewProvider.notifier).gotoPrev(),
                  )
                : null,
            next: i < constructors.length - 1
                ? FeatureNavigationSegment(
                    getPreview: () =>
                        ref
                            .read(featureViewProvider.notifier)
                            .getNextPreview() ??
                        Image.asset('assets/test_image6.png'),
                    goto: () =>
                        ref.read(featureViewProvider.notifier).gotoNext(),
                  )
                : null,
          ),
        ),
      ),
    );
  }
  return result;
}
