import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/app_colors.dart';
import 'package:knusos_with_smartphone_frontend/layout/content/content_view.dart';
import 'package:knusos_with_smartphone_frontend/layout/header/header.dart';
import 'package:knusos_with_smartphone_frontend/layout/music_dock/music_dock.dart';
import 'package:knusos_with_smartphone_frontend/layout/navigation/navigation.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Expanded(
              child: Stack(
                children: [
                  ContentView(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsetsGeometry.only(bottom: 55),
                      child: MusicDock(),
                    ),
                  ),
                ],
              ),
            ),
            Navigation(),
          ],
        ),
      ),
    );
  }
}
