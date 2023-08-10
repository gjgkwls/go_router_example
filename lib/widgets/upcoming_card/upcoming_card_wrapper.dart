import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';

class UpcomingCardWrapper extends StatelessWidget {
  const UpcomingCardWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: TablingColors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: TablingSpaces.s24,
        vertical: TablingSpaces.s20,
      ),
      child: child,
    );
  }
}
