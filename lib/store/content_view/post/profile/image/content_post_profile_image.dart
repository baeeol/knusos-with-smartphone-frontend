import 'package:flutter/material.dart';

class ContentPostProfileImage extends StatelessWidget {
  final Image data;

  const ContentPostProfileImage(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: BoxBorder.all(
          color: Color.fromARGB(255, 206, 212, 242),
          width: 1.5,
        ),
      ),
      child: ClipOval(child: data),
    );
  }
}
