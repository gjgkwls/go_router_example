import 'package:flutter/material.dart';

import '../../tokens/core/colors.dart';

// FIXME: (2023.8.8 bean) 화면 레벨 style theme extension 만드는 것이 맞는 방향인지..?
@immutable
class UsageHistoryScreenStyle extends ThemeExtension<UsageHistoryScreenStyle> {
  final Color? backgroundColor;
  final Color? listBackgroundColor;
  final double tabBarTotalHeight;

  static const light = UsageHistoryScreenStyle();
  static const dark = UsageHistoryScreenStyle();

  const UsageHistoryScreenStyle({
    this.backgroundColor = TablingColors.white,
    this.listBackgroundColor = TablingColors.white2,
    this.tabBarTotalHeight = 48,
  });

  @override
  UsageHistoryScreenStyle copyWith({
    double? tabBarTotalHeight,
  }) {
    return UsageHistoryScreenStyle(
      backgroundColor: backgroundColor,
      listBackgroundColor: listBackgroundColor,
      tabBarTotalHeight: tabBarTotalHeight ?? this.tabBarTotalHeight,
    );
  }

  @override
  ThemeExtension<UsageHistoryScreenStyle> lerp(
    covariant ThemeExtension<UsageHistoryScreenStyle>? other,
    double t,
  ) {
    if (other is! UsageHistoryScreenStyle) {
      return this;
    }

    return UsageHistoryScreenStyle(
      tabBarTotalHeight: tabBarTotalHeight,
    );
  }
}
