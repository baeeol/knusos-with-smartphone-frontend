import 'package:flutter/material.dart';

class MusicDockCover extends StatelessWidget {
  const MusicDockCover({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
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
      child: ClipOval(child: Image.asset('assets/images/test_image4.png')),
    );
  }
}
