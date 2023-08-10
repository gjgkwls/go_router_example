import 'package:flutter/material.dart';
import 'package:go_router_example/theme/extensions.dart';
import 'package:go_router_example/theme/extensions/app_bar_extension.dart';
import 'package:go_router_example/theme/extensions/usage_history_filter_style.dart';
import 'package:go_router_example/theme/extensions/usage_history_screen_style.dart';
import 'package:go_router_example/theme/extensions/usage_history_tile_style.dart';
import 'package:go_router_example/tokens/core/core.dart';
import 'extensions/usage_history_tab_bar_style.dart';

final tablingLightTheme = ThemeData(
  package: 'tabling_ui',
  useMaterial3: true,
  fontFamily: TablingTypography.fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: TablingColors.white,
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: const AppBarTheme(
    surfaceTintColor: Colors.transparent,
    backgroundColor: TablingColors.white,
    foregroundColor: TablingColors.black,
    titleTextStyle: TextStyle(
      color: TablingColors.black,
      fontSize: TablingSpaces.s22,
      fontWeight: TablingTypography.fontWeightBold,
    ),
  ),
  extensions: <ThemeExtension<dynamic>>[
    SettingListTileStyle.light,
    SettingSectionTitleStyle.light,
    AppBarStyle.light,
    UsageHistoryScreenStyle.light,
    UsageHistoryTabBarStyle.light,
    UsageHistoryFilterStyle.light,
    UsageHistoryTileStyle.light,
  ],
);
