import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';

@immutable
class SettingListTileStyle extends ThemeExtension<SettingListTileStyle> {
  static const light = SettingListTileStyle();
  static const dark = SettingListTileStyle();

  const SettingListTileStyle({
    this.titleTextStyle = const TextStyle(
      leadingDistribution: TextLeadingDistribution.proportional,
      textBaseline: TextBaseline.ideographic,
      fontSize: TablingTypography.fontSize18,
      fontWeight: FontWeight.w600,
    ),
    this.trailingTextStyle = const TextStyle(
      color: TablingColors.blue,
      fontSize: TablingTypography.fontSize16,
      fontWeight: FontWeight.w600,
    ),
    this.descriptionTextStyle = const TextStyle(
      fontSize: TablingTypography.fontSize12,
      fontWeight: TablingTypography.fontWeightLight,
      color: TablingColors.grey,
    ),
    this.padding = const EdgeInsets.symmetric(
      horizontal: TablingSpaces.s24,
      vertical: TablingSpaces.s16,
    ),
  });

  final TextStyle? titleTextStyle;
  final TextStyle? trailingTextStyle;
  final TextStyle? descriptionTextStyle;
  final EdgeInsets? padding;

  @override
  SettingListTileStyle copyWith({
    TextStyle? titleTextStyle,
    TextStyle? trailingTextStyle,
    TextStyle? descriptionTextStyle,
    EdgeInsets? padding,
  }) {
    return SettingListTileStyle(
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      trailingTextStyle: trailingTextStyle ?? this.trailingTextStyle,
      descriptionTextStyle: descriptionTextStyle ?? this.descriptionTextStyle,
      padding: padding ?? this.padding,
    );
  }

  @override
  SettingListTileStyle lerp(
      ThemeExtension<SettingListTileStyle>? other, double t) {
    if (other is! SettingListTileStyle) {
      return this;
    }
    return SettingListTileStyle(
      titleTextStyle: titleTextStyle,
      trailingTextStyle: trailingTextStyle,
      descriptionTextStyle: descriptionTextStyle,
      padding: padding,
    );
  }
}
