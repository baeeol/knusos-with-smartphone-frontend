import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/package.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: AppLayout.horizontalPadding,
      ),
      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(
          bottom: BorderSide(color: Color(0xffe4e4e4), width: 1.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 10,
            children: [
              Icon(Icons.circle_outlined),
              Text(
                'PLiSEYEON',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Row(children: [Icon(Icons.more_vert)]),
        ],
      ),
    );
  }
}
