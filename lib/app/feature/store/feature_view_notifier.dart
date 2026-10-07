import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knusos_with_smartphone_frontend/app/feature/store/feature_view_state.dart';
import 'package:knusos_with_smartphone_frontend/infra/widgets/feature/index.dart';

class FeatureViewNotifier extends Notifier<FeatureViewState> {
  @override
  FeatureViewState build() => FeatureViewState(features: [], current: 0);

  void registerFeatures(List<FeatureWidget> features) {
    state.features = features;
  }

  bool isFirstSelected() {
    return state.current == 0;
  }

  bool isLastSelected() {
    return state.current == state.features.length - 1;
  }

  Image? getPrevPreview() {
    return !isFirstSelected()
        ? state.features[state.current - 1].previewImage
        : null;
  }

  void gotoPrev() {
    if (!isFirstSelected()) {
      state = state.copyWith(current: state.current - 1);
    }
  }

  Image? getNextPreview() {
    return !isLastSelected()
        ? state.features[state.current + 1].previewImage
        : null;
  }

  void gotoNext() {
    if (!isLastSelected()) {
      state = state.copyWith(current: state.current + 1);
    }
  }
}
