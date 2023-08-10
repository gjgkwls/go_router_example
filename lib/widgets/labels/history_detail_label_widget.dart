import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';

class HistoryInfoLabel extends StatelessWidget {
  const HistoryInfoLabel(
      {super.key, required this.rowTitle, required this.rowDesc});

  final String rowTitle;
  final String rowDesc;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          rowTitle,
          style: const TextStyle(
            color: Color(0xff969FAC),
            fontSize: TablingTypography.fontSize14,
          ),
        ),
        Text(
          rowDesc,
          style: const TextStyle(
            color: Color(0xff2E3137),
            fontSize: TablingTypography.fontSize14,
          ),
        ),
      ],
    );
  }
}
