import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 22,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.6,
          color: const Color(0xffD7DBDF),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xff2E3137),
          fontSize: TablingTypography.fontSize14,
        ),
      ),
    );
  }
}
