import 'package:flutter/material.dart';
import 'package:go_router_example/models/mypage_history_model.dart';
import 'package:go_router_example/widgets/buttons/rounded_button_widget.dart';
import 'package:go_router_example/widgets/chips/status_tag_widget.dart';
import 'package:go_router_example/widgets/labels/history_detail_label_widget.dart';

import '../../theme/extensions/usage_history_tile_style.dart';

// @immutable
// class _CardInfo {
//   final String label;
//   final String value;
//   const _CardInfo(this.label, this.value);
// }

class UsageHistoryTile extends StatelessWidget {
  final String restaurantName;
  final String status;
  final List<PairInfo> info;
  final List<String> buttons;

  const UsageHistoryTile({
    super.key,
    required this.restaurantName,
    required this.status,
    required this.info,
    required this.buttons,
  });

  // late final cardInfo = <_CardInfo>[
  //   _CardInfo('주문일시', history.reservationDate ?? ''),
  //   _CardInfo('주문유형', history.type),
  //   _CardInfo('주문메뉴', history.menuNames),
  //   _CardInfo('결제금액', '${history.price}원'),
  // ];

  // final buttons = [
  //   TablingStrings.orderDetail,
  //   TablingStrings.cancelOrder,
  // ];

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<UsageHistoryTileStyle>()!;

    return Container(
      margin: style.tileMargin,
      padding: style.tilePadding,
      decoration: style.boxDecoration,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                restaurantName,
                style: style.titleTextStyle,
              ),
              // TablingIcon.indicatorRight(),
              const Spacer(),
              StatusTag(
                historyStatus: status,
              ),
            ],
          ),
          SizedBox(
            height: style.spacingTitleBottom,
          ),
          ListView.separated(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return HistoryInfoLabel(
                rowTitle: info[index].key,
                rowDesc: info[index].value,
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              height: style.spacingInfoMapBetween,
            ),
            itemCount: info.length,
          ),
          SizedBox(
            height: style.spacingInfoMapBottom,
          ),
          ListView.separated(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return RoundedButton(label: buttons[index]);
            },
            separatorBuilder: (context, index) => SizedBox(
              height: style.spacingButtonsBetween,
            ),
            itemCount: buttons.length,
          ),
        ],
      ),
    );
  }
}
