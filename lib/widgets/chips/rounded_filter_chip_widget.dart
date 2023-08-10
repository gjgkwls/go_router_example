import 'package:flutter/material.dart';

import '../../theme/extensions/usage_history_filter_style.dart';

class RoundedFilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  const RoundedFilterChip({
    super.key,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<UsageHistoryFilterStyle>()!;

    return Container(
      alignment: style.chipAlignment,
      padding: style.chipPadding,
      height: style.chipHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(style.chipRadius),
        border: Border.all(
          color: style.chipBorderColor,
          width: style.chipBorderWidth,
        ),
        color: isSelected ? style.selectedColor : style.unselectedColor,
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: isSelected ? style.selectedTextStyle : style.unselectedTextStyle,
      ),
    );
  }
}
