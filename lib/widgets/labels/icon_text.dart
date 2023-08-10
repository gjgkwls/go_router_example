import 'package:flutter/material.dart';

import '../icons/common_icon.dart';

class IconText extends StatelessWidget {
  final IconPosition iconPosition;
  final String iconName;
  final String label;
  final double spacing;
  final Color backgroundColor;
  final double backgroundRadius;
  final Color borderColor;
  final double borderWidth;

  const IconText({
    Key? key,
    required this.iconPosition,
    required this.iconName,
    required this.label,
    this.spacing = 0,
    this.backgroundColor = Colors.transparent,
    this.backgroundRadius = 0,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor, width: borderWidth)),
      child: switch (iconPosition) {
        IconPosition.top => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonIcon.svg(iconName),
              SizedBox(height: spacing),
              Text(label),
            ],
          ),
        IconPosition.bottom => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(label),
              SizedBox(height: spacing),
              CommonIcon.svg(iconName),
            ],
          ),
        IconPosition.right => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(label),
              SizedBox(width: spacing),
              CommonIcon.svg(iconName),
            ],
          ),
        IconPosition.left => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonIcon.svg(iconName),
              SizedBox(width: spacing),
              Text(label),
            ],
          ),
      },
    );
  }
}

enum IconPosition { left, right, top, bottom }
