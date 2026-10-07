import 'package:flutter/material.dart';

class AppHorizontalPadding extends StatelessWidget {
  static const padding = 24.0;

  final Widget child;

  const AppHorizontalPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: padding),
      child: child,
    );
  }
}

class AppVerticalPadding extends StatelessWidget {
  static const padding = 44.0;

  final Widget child;

  const AppVerticalPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: padding),
      child: child,
    );
  }
}
