import 'package:flutter/material.dart';

import '../../enums/usage_tab_type.dart';

// TODO: (2023.8.8 bean) 예전에는 common 하게 쓸수 있는 디자인이었는데, 이번에는 과연..? 체크해볼것.
class MyPageTabBar extends StatelessWidget {
  final Color selectedColor;
  final Color unselectedColor;
  final double fontSize;
  final EdgeInsets labelPadding;

  const MyPageTabBar({
    super.key,
    required this.selectedColor,
    required this.unselectedColor,
    required this.fontSize,
    required this.labelPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      labelPadding: labelPadding,
      tabs: UsageHistoryTabType.values.map((e) => Tab(text: e.name)).toList(),
      labelColor: selectedColor,
      unselectedLabelColor: unselectedColor,
      labelStyle: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
      overlayColor: const MaterialStatePropertyAll(Colors.white),
      indicatorColor: selectedColor,
      indicatorWeight: 2,
      indicatorSize: TabBarIndicatorSize.label,
    );
  }
}
