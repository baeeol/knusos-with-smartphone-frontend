import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/widget/content/content_widget.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/package.dart';
import 'package:knusos_with_smartphone_frontend/widget/content/package.dart';
import 'package:material_symbols_icons/symbols.dart';

class CalendarContent extends ContentWidget {
  const CalendarContent({super.key});

  @override
  ContentState<CalendarContent> createState() => _CalendarContentState();

  @override
  NavigationIcon get navigationIcon => NavigationIcon(
    defaultIcon: Icon(Symbols.calendar_today, size: 33, grade: 0, fill: 0),
    selectedIcon: Icon(
      Symbols.calendar_today,
      size: 33,
      grade: 0,
      fill: 1,
      color: Color(0xFFFF95B0),
    ),
  );
}

class _CalendarContentState extends ContentState<CalendarContent> {
  @override
  Widget build(BuildContext context) {
    return Content(
      backgroundGradientColors: ContentBackgroundGradientColors(
        bright: Color(0xFFF6D6DE),
        main: Color(0xFFFF95B0),
      ),
      post: ContentPost(
        profile: ContentPostProfile(
          image: Image.asset('assets/images/test_image6.png'),
          name: '현시연 캘린더',
          description: '일정을 잘 확인하기~',
        ),
        character: ContentPostCharacter(
          Image.asset('assets/images/test_image01.png'),
        ),
        image: ContentPostImage(
          Image.asset('assets/images/test_image5.png', fit: BoxFit.cover),
        ),
        actionBar: ContentPostActionBar(
          buttons: [
            ContentPostActionButton(
              icon: Icon(
                Icons.favorite_border,
                size: ContentPostActionButton.size,
              ),
              onPressed: () {},
            ),
            ContentPostActionButton(
              icon: Icon(
                Icons.chat_bubble_outline,
                size: ContentPostActionButton.size,
              ),
              onPressed: () {},
            ),
            ContentPostActionButton(
              icon: Icon(
                Icons.send_rounded,
                size: ContentPostActionButton.size,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
