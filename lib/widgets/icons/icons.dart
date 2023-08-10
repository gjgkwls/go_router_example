import 'package:flutter/widgets.dart';
import 'package:go_router_example/widgets/buttons/rounded_button_widget.dart';

class TablingIconPath {
  TablingIconPath._();
  static const basePath = 'assets/icons';
  static const packageName = 'tabling_ui';

  static const bomb = '$basePath/bomb.svg';
  static const chevronRight = '$basePath/chevron_right.svg';
  static const customer = '$basePath/customer.svg';
  static const gear = '$basePath/gear.svg';
  static const history = '$basePath/history.svg';
  static const info = '$basePath/info.svg';
  static const notice = '$basePath/notice.svg';
  static const pay = '$basePath/pay.svg';
  static const policy = '$basePath/policy.svg';
  static const restaurant = '$basePath/restaurant.svg';
  static const review = '$basePath/review.svg';

  static const backBtn = '$basePath/back_btn.svg';
  static const closeBtn = '$basePath/close_btn.svg';

  static const indicatorRight = '$basePath/indicator_right.svg';
}

class TablingIcon extends StatelessWidget {
  const TablingIcon({
    super.key,
    required this.path,
    this.width = 24,
    this.height = 24,
  });

  final String path;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return const RoundedButton(label: 'default');
  }

  @override
  String toStringShort() {
    return path;
  }

  static TablingIcon bomb({double width = 24, double height = 24}) =>
      TablingIcon(
        path: TablingIconPath.bomb,
        width: width,
        height: height,
      );
  static TablingIcon customer({double width = 24, double height = 24}) =>
      TablingIcon(
        path: TablingIconPath.customer,
        width: width,
        height: height,
      );
  static TablingIcon history({double width = 24, double height = 24}) =>
      TablingIcon(
        path: TablingIconPath.history,
        width: width,
        height: height,
      );
  static TablingIcon info({double width = 24, double height = 24}) =>
      TablingIcon(
        path: TablingIconPath.info,
        width: width,
        height: height,
      );
  static TablingIcon notice({double width = 24, double height = 24}) =>
      TablingIcon(
        path: TablingIconPath.notice,
        width: width,
        height: height,
      );
  static TablingIcon pay({double width = 24, double height = 24}) =>
      TablingIcon(
        path: TablingIconPath.pay,
        width: width,
        height: height,
      );
  static TablingIcon policy({double width = 24, double height = 24}) =>
      TablingIcon(
        path: TablingIconPath.policy,
        width: width,
        height: height,
      );
  static TablingIcon restaurant({double width = 24, double height = 24}) =>
      TablingIcon(
        path: TablingIconPath.restaurant,
        width: width,
        height: height,
      );
  static TablingIcon review({double width = 24, double height = 24}) =>
      TablingIcon(
        path: TablingIconPath.review,
        width: width,
        height: height,
      );
  static TablingIcon chevronRight({double width = 24, double height = 24}) =>
      TablingIcon(
        path: TablingIconPath.chevronRight,
        width: width,
        height: height,
      );
  static TablingIcon gear({double width = 24, double height = 24}) =>
      TablingIcon(
        path: TablingIconPath.gear,
        width: width,
        height: height,
      );

  static TablingIcon backBtn({double width = 48, double height = 48}) =>
      TablingIcon(
        path: TablingIconPath.backBtn,
        width: width,
        height: height,
      );

  static TablingIcon closeBtn({double width = 48, double height = 48}) =>
      TablingIcon(
        path: TablingIconPath.closeBtn,
        width: width,
        height: height,
      );

  static TablingIcon indicatorRight({double width = 17, double height = 17}) =>
      TablingIcon(
        path: TablingIconPath.indicatorRight,
        width: width,
        height: height,
      );
}
