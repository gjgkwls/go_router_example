import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';

class RoundedTextButton extends StatelessWidget {
  RoundedTextButton({
    super.key,
    this.padding,
    this.backgroundColor,
    required this.buttonTitle,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
    this.onPressed,
  });

  EdgeInsets? padding = const EdgeInsets.symmetric(
    vertical: 17,
    horizontal: 24,
  );
  Color? backgroundColor = const Color(0xFF717171);
  final String buttonTitle;
  Color? fontColor = TablingColors.white;
  double? fontSize = TablingTypography.fontSize18;
  FontWeight? fontWeight = TablingTypography.fontWeightBold;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF717171),
        padding: padding,
      ),
      onPressed: onPressed,
      child: Text(
        buttonTitle,
        style: const TextStyle(
          color: TablingColors.white,
          fontSize: TablingTypography.fontSize18,
          fontWeight: TablingTypography.fontWeightBold,
        ),
      ),
    );
  }
}
