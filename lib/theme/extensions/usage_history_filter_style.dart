import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';

@immutable
class UsageHistoryFilterStyle extends ThemeExtension<UsageHistoryFilterStyle> {
// FIXME: (2023.8.23 bean) 이렇게 까지 디테일하게 작성하는 것이 맞는 방향인가..?
  final EdgeInsetsGeometry boxPadding;
  final double? chipHeight;
  final double? spacing;

// FIXME: (2023.8.23 bean) filter(box)와 filterChip 스타일을 분리해야할까?
  final Color? selectedColor;
  final Color? unselectedColor;
  final TextStyle? selectedTextStyle;
  final TextStyle? unselectedTextStyle;

  final Alignment? chipAlignment;
  final EdgeInsets? chipPadding;

  final double chipRadius;
  final Color chipBorderColor;
  final double chipBorderWidth;

  static const light = UsageHistoryFilterStyle();
  static const dark = UsageHistoryFilterStyle();

  const UsageHistoryFilterStyle({
    this.boxPadding = const EdgeInsets.all(
      TablingSpaces.s20,
    ),
    this.chipHeight = TablingSpaces.s40,
    this.spacing = TablingSpaces.s6,
    this.selectedColor = const Color(0xff11181C),
    this.unselectedColor = TablingColors.white,
    this.selectedTextStyle = const TextStyle(
      height: 1,
      fontSize: TablingTypography.fontSize14,
      fontWeight: FontWeight.w600,
      color: TablingColors.white,
    ),
    this.unselectedTextStyle = const TextStyle(
      height: 1,
      fontSize: TablingTypography.fontSize14,
      fontWeight: FontWeight.w400,
      color: Color(0xff525965),
    ),
    this.chipAlignment = Alignment.center,
    this.chipPadding = const EdgeInsets.symmetric(
      vertical: TablingSpaces.s8,
      horizontal: TablingSpaces.s20,
    ),
    this.chipRadius = 99,
    this.chipBorderColor = const Color(0xffECEEF0),
    this.chipBorderWidth = 1,
  });

  @override
  UsageHistoryFilterStyle copyWith({
    double? tabBarTotalHeight,
  }) {
    return UsageHistoryFilterStyle(
      boxPadding: boxPadding,
      chipHeight: chipHeight ?? chipHeight,
      spacing: spacing ?? spacing,
      selectedColor: selectedColor ?? selectedColor,
      unselectedColor: unselectedColor ?? unselectedColor,
      selectedTextStyle: selectedTextStyle ?? selectedTextStyle,
      unselectedTextStyle: unselectedTextStyle ?? unselectedTextStyle,
      chipAlignment: chipAlignment ?? chipAlignment,
      chipPadding: chipPadding ?? chipPadding,
      chipRadius: chipRadius,
      chipBorderColor: chipBorderColor ?? chipBorderColor,
      chipBorderWidth: chipBorderWidth ?? chipBorderWidth,
    );
  }

  @override
  ThemeExtension<UsageHistoryFilterStyle> lerp(
    covariant ThemeExtension<UsageHistoryFilterStyle>? other,
    double t,
  ) {
    if (other is! UsageHistoryFilterStyle) {
      return this;
    }

    return UsageHistoryFilterStyle(
      boxPadding: boxPadding,
      chipHeight: chipHeight,
      spacing: spacing,
      selectedColor: selectedColor,
      unselectedColor: unselectedColor,
      selectedTextStyle: selectedTextStyle,
      unselectedTextStyle: unselectedTextStyle,
      chipAlignment: chipAlignment,
      chipPadding: chipPadding,
      chipRadius: chipRadius,
      chipBorderColor: chipBorderColor,
      chipBorderWidth: chipBorderWidth,
    );
  }
}
