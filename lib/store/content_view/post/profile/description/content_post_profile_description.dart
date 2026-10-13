import 'package:flutter/material.dart';

class ContentPostProfileDescription extends StatelessWidget {
  final String data;

  const ContentPostProfileDescription(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 3,
      children: [
        Icon(Icons.campaign, size: 16, color: Color(0xff808080)),
        Text(
          data,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xff808080),
          ),
        ),
      ],
    );
  }
}
