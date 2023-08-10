import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../icons/common_icon.dart';

class TablingErrorImage extends StatelessWidget {
  final double? iconWidth, iconHeight;
  final Color? iconTint;
  final Color? backgroundColor;

  const TablingErrorImage({
    super.key,
    this.iconWidth,
    this.iconHeight,
    this.iconTint,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: backgroundColor ?? const Color(0xFFE7ECF2)),
      child: CommonIcon.svg(
        'no_img.svg',
        width: iconWidth,
        height: iconHeight,
        tint: iconTint,
      ),
    );
  }
}
