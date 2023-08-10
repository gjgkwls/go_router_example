import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';

@immutable
class SettingSectionTitleStyle
    extends ThemeExtension<SettingSectionTitleStyle> {
  static const light = SettingSectionTitleStyle();
  static const dark = SettingSectionTitleStyle();

  const SettingSectionTitleStyle({
    this.textStyle = const TextStyle(
      color: Color(0xFF969FAC),
      fontWeight: FontWeight.w600,
    ),
    this.padding = const EdgeInsets.only(
      top: TablingSpaces.s16,
      bottom: TablingSpaces.s12,
      left: TablingSpaces.s24,
      right: TablingSpaces.s24,
    ),
  });

  final TextStyle? textStyle;
  final EdgeInsets? padding;

  @override
  SettingSectionTitleStyle copyWith({
    TextStyle? textStyle,
    EdgeInsets? padding,
  }) {
    return SettingSectionTitleStyle(
      textStyle: textStyle ?? this.textStyle,
      padding: padding ?? this.padding,
    );
  }

  @override
  SettingSectionTitleStyle lerp(
      ThemeExtension<SettingSectionTitleStyle>? other, double t) {
    if (other is! SettingSectionTitleStyle) {
      return this;
    }
    return SettingSectionTitleStyle(
      textStyle: textStyle,
      padding: padding,
    );
  }
}
