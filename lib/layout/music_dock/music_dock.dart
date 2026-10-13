import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/app_colors.dart';
import 'package:knusos_with_smartphone_frontend/layout/music_dock/composer/music_dock_composer.dart';
import 'package:knusos_with_smartphone_frontend/layout/music_dock/cover/music_dock_cover.dart';
import 'package:knusos_with_smartphone_frontend/layout/music_dock/play_button/music_dock_play_button.dart';
import 'package:knusos_with_smartphone_frontend/layout/music_dock/title/music_dock_title.dart';

class MusicDock extends StatelessWidget {
  static double width = 320;
  static double height = 65;

  const MusicDock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(50, 50, 93, 0.25),
            blurRadius: 5,
            spreadRadius: -1,
            offset: Offset(0, 2),
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.3),
            blurRadius: 3,
            spreadRadius: -1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 10,
            children: [
              MusicDockCover(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MusicDockTitle('The Lost Beyond'),
                  MusicDockComposer('플로로'),
                ],
              ),
            ],
          ),
          MusicDockPlayButton(
            isPlaying: true,
            playMusic: () {},
            pauseMusic: () {},
          ),
        ],
      ),
    );
  }
}
