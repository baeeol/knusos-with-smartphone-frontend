import 'package:knusos_with_smartphone_frontend/widget/content/content_widget.dart';

class ContentViewState {
  List<ContentWidget> contentList;
  int selected;

  ContentViewState({required this.contentList, required this.selected});

  ContentViewState copyWith({List<ContentWidget>? contentList, int? selected}) {
    return ContentViewState(
      contentList: contentList ?? this.contentList,
      selected: selected ?? this.selected,
    );
  }
}
