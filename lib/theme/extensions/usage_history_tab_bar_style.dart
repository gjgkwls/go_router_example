import 'package:flutter/material.dart';

// FIXME: (2023.8.8 bean) 화면 레벨 style theme extension 만드는 것이 맞는 방향인지..?
@immutable
class UsageHistoryTabBarStyle extends ThemeExtension<UsageHistoryTabBarStyle> {
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? boxPadding;
  final EdgeInsets labelPadding;
  final double labelFontSize;
  final Color selectedLabelColor;
  final Color unselectedLabelColor;

  static const light = UsageHistoryTabBarStyle();
  static const dark = UsageHistoryTabBarStyle();

  const UsageHistoryTabBarStyle({
    this.alignment = Alignment.centerLeft,
    this.boxPadding = const EdgeInsets.only(left: 15),
    this.labelPadding = const EdgeInsets.only(
      left: 9,
      right: 9,
      top: 16,
    ),
    this.labelFontSize = 16,
    this.selectedLabelColor = const Color(0xff262A32),
    this.unselectedLabelColor = const Color(0xffB9BDC5),
  });

  @override
  UsageHistoryTabBarStyle copyWith({
    double? tabBarTotalHeight,
  }) {
    return UsageHistoryTabBarStyle(
      alignment: alignment ?? alignment,
      boxPadding: boxPadding ?? boxPadding,
      labelPadding: labelPadding,
      labelFontSize: labelFontSize,
      selectedLabelColor: selectedLabelColor,
      unselectedLabelColor: unselectedLabelColor,
    );
  }

  @override
  ThemeExtension<UsageHistoryTabBarStyle> lerp(
    covariant ThemeExtension<UsageHistoryTabBarStyle>? other,
    double t,
  ) {
    if (other is! UsageHistoryTabBarStyle) {
      return this;
    }

    return UsageHistoryTabBarStyle(
      alignment: alignment,
      boxPadding: boxPadding,
      labelPadding: labelPadding,
      labelFontSize: labelFontSize,
      selectedLabelColor: selectedLabelColor,
      unselectedLabelColor: unselectedLabelColor,
    );
  }
}
