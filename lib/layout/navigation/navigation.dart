import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knusos_with_smartphone_frontend/constants/app_colors.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/content_view_provider.dart';
import 'package:knusos_with_smartphone_frontend/widget/content/content_widget.dart';

class Navigation extends ConsumerWidget {
  const Navigation({super.key});

  List<Widget> buildNavigationButtons(
    List<ContentWidget> contents,
    int selectedIdx,
    void Function(int idx) selectContent,
  ) {
    return contents
        .asMap()
        .entries
        .map(
          (entry) => _NavigationButton(
            icon: selectedIdx == entry.key
                ? _SelectedNavigationButton(
                    icon: entry.value.navigationIcon.selectedIcon,
                    color: Color(0xFFFF95B0),
                  )
                : entry.value.navigationIcon.defaultIcon,
            onPressed: () {
              selectContent(entry.key);
            },
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(
          top: BorderSide(color: Color(0xffe2e2e2), width: 0.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: buildNavigationButtons(
          ref.watch(contentViewProvider).contentList,
          ref.watch(contentViewProvider).selected,
          ref.read(contentViewProvider.notifier).selectContent,
        ),
      ),
    );
  }
}

class _NavigationButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;

  const _NavigationButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPressed, child: icon);
  }
}

class _SelectedNavigationButton extends StatelessWidget {
  final Widget icon;
  final Color color;

  const _SelectedNavigationButton({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 8,
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: color,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 4, left: 12, right: 12, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color,
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
            child: Center(child: icon),
          ),
        ),
      ],
    );
  }
}
