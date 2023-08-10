import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';

class SettingSwitchTileStyle extends ThemeExtension<SettingSwitchTileStyle> {
  final EdgeInsets? padding;
  final TextStyle? titleTextStyle;

  static const light = SettingSwitchTileStyle();
  static const dark = SettingSwitchTileStyle();

  const SettingSwitchTileStyle({
    this.titleTextStyle = const TextStyle(
      color: TablingColors.black,
      fontSize: TablingTypography.fontSize18,
      fontWeight: TablingTypography.fontWeightBold,
    ),
    this.padding = const EdgeInsets.symmetric(
      vertical: TablingSpaces.s16,
      horizontal: TablingSpaces.s24,
    ),
  });

  @override
  SettingSwitchTileStyle copyWith({
    EdgeInsets? padding,
    TextStyle? textTitleStyle,
  }) {
    return SettingSwitchTileStyle(
      padding: padding ?? this.padding,
      titleTextStyle: textTitleStyle ?? textTitleStyle,
    );
  }

  @override
  ThemeExtension<SettingSwitchTileStyle> lerp(
      covariant ThemeExtension<SettingSwitchTileStyle>? other, double t) {
    if (other is! SettingSwitchTileStyle) {
      return this;
    }

    return SettingSwitchTileStyle(
      padding: padding,
      titleTextStyle: titleTextStyle,
    );
  }
}
