import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/app_colors.dart';

class MusicDockPlayButton extends StatelessWidget {
  final bool isPlaying;
  final VoidCallback playMusic;
  final VoidCallback pauseMusic;

  const MusicDockPlayButton({
    super.key,
    required this.isPlaying,
    required this.playMusic,
    required this.pauseMusic,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isPlaying ? pauseMusic : playMusic,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(59, 59, 127, 0.247),
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
        child: isPlaying
            ? Icon(Icons.pause, size: 30)
            : Icon(Icons.play_arrow, size: 30),
      ),
    );
  }
}
