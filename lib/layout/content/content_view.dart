import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knusos_with_smartphone_frontend/layout/content/calendar/calendar_content.dart';
import 'package:knusos_with_smartphone_frontend/layout/content/resident/resident_content.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/package.dart';

class ContentView extends ConsumerStatefulWidget {
  const ContentView({super.key});

  @override
  ConsumerState<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends ConsumerState<ContentView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(contentViewProvider.notifier).registerContentList([
        ResidentContent(),
        CalendarContent(),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final int selectedContentIdx = ref.watch(contentViewProvider).selected;
    return ref.watch(contentViewProvider).contentList[selectedContentIdx];
  }
}
