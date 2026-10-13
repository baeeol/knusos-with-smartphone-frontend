import 'package:flutter/material.dart';

class MusicDockComposer extends StatelessWidget {
  final String data;

  const MusicDockComposer(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: Color.fromARGB(255, 166, 166, 166),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    );
  }
}
