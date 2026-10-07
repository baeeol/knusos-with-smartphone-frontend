import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knusos_with_smartphone_frontend/app/feature/store/feature_view_notifier.dart';
import 'package:knusos_with_smartphone_frontend/app/feature/store/feature_view_state.dart';

final featureViewProvider =
    NotifierProvider<FeatureViewNotifier, FeatureViewState>(
      FeatureViewNotifier.new,
    );
