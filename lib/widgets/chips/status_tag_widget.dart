import 'package:flutter/material.dart';
import 'package:go_router_example/enums/RestaurantStatus.dart';

class StatusTag extends StatelessWidget {
  StatusTag({
    super.key,
    required this.historyStatus,
  });

  final String historyStatus;
  late RestaurantStatus statusType =
      RestaurantStatus.values.byName(historyStatus);

  var backgroundColor = const Color(0xff6D7583);
  var borderColor = const Color(0xff6D7583);
  var textColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    switch (statusType) {
      case RestaurantStatus.CANCEL:
      case RestaurantStatus.FINISH:
        backgroundColor = const Color(0xffECEEF0);
        borderColor = const Color(0xffDFE3E6);
        textColor = const Color(0xff969FAC);
      case RestaurantStatus.SEAT:
      case RestaurantStatus.WAITING:
        backgroundColor = const Color(0xffffffff);
        borderColor = const Color(0xffD7DBDF);
        textColor = const Color(0xff6D7583);
      case RestaurantStatus.NOSHOW:
        backgroundColor = const Color(0xffFFE5E5);
        borderColor = const Color(0xffFDD8D8);
        textColor = const Color(0xffE5484D);
    }

    return Container(
      // TODO: 진정 쓸 수 있는 위젯이 container밖에 없는가
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 6,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 1, color: borderColor),
      ),
      child: Text(
        statusType.name,
        style: TextStyle(
          color: textColor,
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
