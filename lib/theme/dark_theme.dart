import 'package:flutter/material.dart';
import 'package:go_router_example/theme/extensions.dart';
import 'package:go_router_example/theme/extensions/setting_switch_tile_extension.dart';

final tablingDarkTheme = ThemeData(
  extensions: const <ThemeExtension<dynamic>>[
    SettingListTileStyle.dark,
    SettingSectionTitleStyle.dark,
    SettingSwitchTileStyle.dark,
  ],
);
