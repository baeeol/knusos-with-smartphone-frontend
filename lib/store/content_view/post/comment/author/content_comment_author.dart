import 'package:flutter/material.dart';

class ContentCommentAuthor extends StatelessWidget {
  final String data;

  const ContentCommentAuthor(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
    );
  }
}
