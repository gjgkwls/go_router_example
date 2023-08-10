import 'package:flutter/material.dart';
import 'package:go_router_example/theme/extensions.dart';

class SettingSectionTitle extends StatelessWidget {
  const SettingSectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<SettingSectionTitleStyle>()!;

    return Padding(
      padding: style.padding!,
      child: Text(title, textAlign: TextAlign.left, style: style.textStyle),
    );
  }
}
