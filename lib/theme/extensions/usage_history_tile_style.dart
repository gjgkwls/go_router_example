import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';

@immutable
class UsageHistoryTileStyle extends ThemeExtension<UsageHistoryTileStyle> {
  final EdgeInsets? tilePadding;
  final EdgeInsets? tileMargin;
  final TextStyle? titleTextStyle;
  final Color tileBackground;
  final double tileBorderRadius;

  final double tileBorderWidth;
  final Color? tileBorderColor;

  //TODO: (2023.8.23 bean) BoxDecoration을 직접 지정하면 안되나? 이렇게 하나하나 다 써줘야하나?
  final double? spacingTitleBottom;
  final double? spacingInfoMapBetween;
  final double? spacingInfoMapBottom;
  final double? spacingButtonsBetween;
  final BoxDecoration? boxDecoration;

  static final light = UsageHistoryTileStyle(
    boxDecoration: BoxDecoration(
      color: TablingColors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: TablingColors.white, width: 0.6),
    ),
  );

  static const dark = UsageHistoryTileStyle();

  const UsageHistoryTileStyle({
    this.titleTextStyle = const TextStyle(
        color: Color(0xff2E3137),
        fontSize: TablingTypography.fontSize18,
        fontWeight: TablingTypography.fontWeightBold),
    this.tilePadding = const EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 16,
    ),
    this.tileMargin = const EdgeInsets.symmetric(
      vertical: 5,
      horizontal: 16,
    ),
    this.tileBackground = TablingColors.white,
    this.tileBorderRadius = 10,
    this.tileBorderWidth = 0.6,
    this.tileBorderColor = const Color(0xffDFE3E6),
    this.spacingTitleBottom = 16,
    this.spacingInfoMapBetween = 8,
    this.spacingInfoMapBottom = 20,
    this.spacingButtonsBetween = 8,
    this.boxDecoration,
  });

  @override
  UsageHistoryTileStyle copyWith({
    double? tabBarTotalHeight,
  }) {
    return UsageHistoryTileStyle(
      titleTextStyle: titleTextStyle ?? titleTextStyle,
      tilePadding: tilePadding ?? tilePadding,
      tileMargin: tileMargin ?? tileMargin,
      tileBackground: tileBackground,
      tileBorderRadius: tileBorderRadius,
      tileBorderWidth: tileBorderWidth,
      tileBorderColor: tileBorderColor ?? tileBorderColor,
      spacingTitleBottom: spacingTitleBottom ?? spacingTitleBottom,
      spacingInfoMapBetween: spacingInfoMapBetween ?? spacingInfoMapBetween,
      spacingInfoMapBottom: spacingInfoMapBottom ?? spacingInfoMapBottom,
      spacingButtonsBetween: spacingButtonsBetween ?? spacingButtonsBetween,
    );
  }

  @override
  ThemeExtension<UsageHistoryTileStyle> lerp(
    covariant ThemeExtension<UsageHistoryTileStyle>? other,
    double t,
  ) {
    if (other is! UsageHistoryTileStyle) {
      return this;
    }

    return UsageHistoryTileStyle(
        titleTextStyle: titleTextStyle,
        tilePadding: tilePadding,
        tileMargin: tileMargin,
        tileBackground: tileBackground,
        tileBorderRadius: tileBorderRadius,
        tileBorderWidth: tileBorderWidth,
        tileBorderColor: tileBorderColor,
        spacingTitleBottom: spacingTitleBottom,
        spacingInfoMapBetween: spacingInfoMapBetween,
        spacingInfoMapBottom: spacingInfoMapBottom,
        spacingButtonsBetween: spacingButtonsBetween);
  }
}
