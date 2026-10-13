import 'package:flutter/material.dart';

abstract class ContentWidget extends StatefulWidget {
  NavigationIcon get navigationIcon;

  const ContentWidget({super.key});

  @override
  ContentState createState();
}

abstract class ContentState<T extends ContentWidget> extends State<T> {}

class NavigationIcon {
  final Widget defaultIcon;
  final Widget selectedIcon;

  const NavigationIcon({required this.defaultIcon, required this.selectedIcon});
}
