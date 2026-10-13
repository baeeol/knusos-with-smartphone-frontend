import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/content_view_state.dart';
import 'package:knusos_with_smartphone_frontend/widget/content/content_widget.dart';

class ContentViewNotifier extends Notifier<ContentViewState> {
  @override
  ContentViewState build() => ContentViewState(contentList: [], selected: 0);

  void registerContentList(List<ContentWidget> contentList) {
    state = state.copyWith(contentList: contentList);
  }

  List<ContentWidget> getAllContents() {
    return state.contentList;
  }

  ContentWidget getSelectedContent() {
    return state.contentList[state.selected];
  }

  void selectContent(int idx) {
    if (idx < 0 || idx >= state.contentList.length) {
      return;
    }

    state = state.copyWith(selected: idx);
  }
}
