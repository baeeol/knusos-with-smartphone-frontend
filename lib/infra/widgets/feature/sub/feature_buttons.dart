import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/infra/constants/palette.constant.dart';

class FeatureButtons extends StatelessWidget {
  final void Function() onPressedLeftMinor;
  final void Function() onPressedLeftSub;
  final FeatureMainButtonData mainButtonData;
  final void Function() onPressedRightSub;
  final void Function() onPressedRightMinor;

  const FeatureButtons({
    super.key,
    required this.onPressedLeftMinor,
    required this.onPressedLeftSub,
    required this.mainButtonData,
    required this.onPressedRightSub,
    required this.onPressedRightMinor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: onPressedLeftMinor, icon: Icon(Icons.circle)),
        IconButton(
          onPressed: onPressedLeftSub,
          icon: Icon(Icons.skip_previous),
        ),
        IconButton(
          onPressed: mainButtonData.onPressed,
          icon: mainButtonData.icon,
          style: IconButton.styleFrom(
            fixedSize: const Size(80, 80),
            backgroundColor: Color(0xff5ab490),
            foregroundColor: Palette.white,
          ),
        ),
        IconButton(onPressed: onPressedRightSub, icon: Icon(Icons.skip_next)),
        IconButton(onPressed: onPressedRightMinor, icon: Icon(Icons.circle)),
      ],
    );
  }
}

class FeatureMainButtonData {
  final Function() onPressed;
  final Widget icon;

  const FeatureMainButtonData({required this.onPressed, required this.icon});
}
