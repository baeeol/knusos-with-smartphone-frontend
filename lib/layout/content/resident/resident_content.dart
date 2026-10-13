import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/widget/content/content_widget.dart';
import 'package:knusos_with_smartphone_frontend/store/content_view/post/package.dart';
import 'package:knusos_with_smartphone_frontend/widget/content/package.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ResidentContent extends ContentWidget {
  const ResidentContent({super.key});

  @override
  ContentState<ResidentContent> createState() => _ResidentContentState();

  @override
  NavigationIcon get navigationIcon => NavigationIcon(
    defaultIcon: Icon(Symbols.home, size: 33, grade: 0, fill: 0),
    selectedIcon: Icon(
      Symbols.home,
      size: 33,
      grade: 0,
      fill: 1,
      color: Color(0xFFFF95B0),
    ),
  );
}

class _ResidentContentState extends ContentState<ResidentContent> {
  @override
  Widget build(BuildContext context) {
    return Content(
      backgroundGradientColors: ContentBackgroundGradientColors(
        bright: Color(0xFFF6D6DE),
        main: Color(0xFFFF95B0),
      ),
      post: ContentPost(
        profile: ContentPostProfile(
          image: Image.asset('assets/images/test_image7.png'),
          name: '동방 인원 알리미',
          description: '사람이 많을수록 재미있는건 당연!',
        ),
        character: ContentPostCharacter(
          Image.asset('assets/images/test_image01.png'),
        ),
        image: ContentPostImage(
          Image.asset('assets/images/test_image8.png', fit: BoxFit.cover),
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
