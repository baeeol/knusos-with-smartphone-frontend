import 'package:flutter/material.dart';

class ContentPostActionButton extends StatelessWidget {
  static double size = 30;

  final Widget icon;
  final VoidCallback onPressed;

  const ContentPostActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPressed, child: icon);
  }
}
