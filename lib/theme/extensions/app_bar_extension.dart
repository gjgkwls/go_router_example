import 'package:flutter/material.dart';

import '../../tokens/core/colors.dart';
import '../../tokens/core/typography.dart';

@immutable
class AppBarStyle extends ThemeExtension<AppBarStyle> {
  final Color? backgroundColor;
  final TextStyle? titleTextStyle;
  final double? height;
  final double? leadingWidth;
  final double? leadingIconSize;
  final EdgeInsetsGeometry? leadingIconPadding;

  static const light = AppBarStyle();
  static const dark = AppBarStyle();

  const AppBarStyle({
    this.backgroundColor = TablingColors.white,
    this.titleTextStyle = const TextStyle(
      color: TablingColors.gray900,
      fontSize: TablingTypography.fontSize18,
      fontWeight: TablingTypography.fontWeight600,
    ),
    this.height = 48,
    this.leadingWidth = 48,
    this.leadingIconSize = 48,
    this.leadingIconPadding = const EdgeInsets.all(0.0),
  });

  @override
  AppBarStyle copyWith({
    TextStyle? textTitleStyle,
  }) {
    return AppBarStyle(
      titleTextStyle: textTitleStyle ?? titleTextStyle,
    );
  }

  @override
  ThemeExtension<AppBarStyle> lerp(
    covariant ThemeExtension<AppBarStyle>? other,
    double t,
  ) {
    if (other is! AppBarStyle) {
      return this;
    }

    return AppBarStyle(
      titleTextStyle: titleTextStyle,
    );
  }
}
