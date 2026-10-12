import 'package:flutter/material.dart';
import 'package:knusos_with_smartphone_frontend/constants/palette.constant.dart';
import 'package:knusos_with_smartphone_frontend/widgets/app/app_icon_button.dart';
import 'package:knusos_with_smartphone_frontend/widgets/feature/feature_widget.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class FeatureButtons extends StatelessWidget {
  final FeatureMainButtonData mainButtonData;
  final FeatureNavigation navigation;

  const FeatureButtons({
    super.key,
    required this.mainButtonData,
    required this.navigation,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 30,
      children: [
        // goto prev feature button
        _FeatureSubButton(
          activated: navigation.prev != null,
          icon: Symbols.skip_previous_sharp,
          onPressed: navigation.prev?.goto ?? () {},
        ),
        // current feature main action button
        _FeatureMainButton(data: mainButtonData),
        // goto next feature button
        _FeatureSubButton(
          activated: navigation.next != null,
          icon: Symbols.skip_next_sharp,
          onPressed: navigation.next?.goto ?? () {},
        ),
      ],
    );
  }
}

class _FeatureMainButton extends StatelessWidget {
  final FeatureMainButtonData data;

  const _FeatureMainButton({required this.data});

  @override
  Widget build(BuildContext context) {
    const double size = 85;
    const double outterPadding = 13;
    const double innerPadding = 3;

    // calculate outter button color
    final hslColor = HSLColor.fromColor(data.color);
    final outterColor = hslColor
        .withLightness(hslColor.lightness + (1.0 - hslColor.lightness) * 0.8)
        .toColor();

    return GestureDetector(
      onTap: data.onPressed,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: outterColor),
        child: Padding(
          padding: EdgeInsetsGeometry.all(outterPadding),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: data.color,
            ),
            child: Padding(
              padding: EdgeInsetsGeometry.all(innerPadding),
              child: data.icon,
            ),
          ),
        ),
      ),
    );
  }
}

class FeatureMainButtonData {
  final Widget icon;
  final VoidCallback onPressed;
  final Color color;

  const FeatureMainButtonData({
    required this.icon,
    required this.onPressed,
    required this.color,
  });
}

class _FeatureSubButton extends StatelessWidget {
  final bool activated;
  final IconData icon;
  final VoidCallback onPressed;

  const _FeatureSubButton({
    required this.activated,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppIconButton(
      icon: Icon(
        icon,
        color: activated ? Palette.black : Color(0xffE5E8EB),
        weight: 600,
        fill: 0.2,
        size: 30,
      ),
      onPressed: activated ? onPressed : () {},
    );
  }
}
