import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/content_view_notifier.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/content_view_state.dart';

final contentViewProvider =
    NotifierProvider<ContentViewNotifier, ContentViewState>(
      ContentViewNotifier.new,
    );
