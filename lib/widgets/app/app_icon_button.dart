import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;

  const AppIconButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPressed, child: icon);
  }
}
