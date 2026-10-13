import 'package:flutter/material.dart';

class ContentPostCharacter extends StatelessWidget {
  final Widget character;

  const ContentPostCharacter(this.character, {super.key});

  @override
  Widget build(BuildContext context) {
    return character;
  }
}
