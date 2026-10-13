import 'package:flutter/material.dart';

class ContentPostProfileName extends StatelessWidget {
  final String data;

  const ContentPostProfileName(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
    );
  }
}
