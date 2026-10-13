import 'package:flutter/material.dart';

class MusicDockTitle extends StatelessWidget {
  final String data;

  const MusicDockTitle(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
    );
  }
}
