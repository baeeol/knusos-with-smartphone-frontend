import 'package:knusos_with_smartphone_frontend/infra/widgets/feature/index.dart';

class FeatureViewState {
  List<FeatureWidget> features;
  int current;

  FeatureViewState({required this.features, required this.current});

  FeatureViewState copyWith({List<FeatureWidget>? features, int? current}) {
    return FeatureViewState(
      features: features ?? this.features,
      current: current ?? this.current,
    );
  }
}
