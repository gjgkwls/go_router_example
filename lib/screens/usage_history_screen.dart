import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router_example/models/mypage_history_model.dart';
import 'package:go_router_example/theme/extensions/usage_history_filter_style.dart';
import 'package:go_router_example/theme/extensions/usage_history_screen_style.dart';
import 'package:go_router_example/theme/extensions/usage_history_tab_bar_style.dart';
import 'package:go_router_example/widgets/appbar/tabling_appbar.dart';
import 'package:go_router_example/widgets/cards/history_card_widget.dart';
import 'package:go_router_example/widgets/chips/rounded_filter_chip_widget.dart';

import '../constants/constants.dart';
import '../enums/usage_tab_type.dart';
import '../widgets/tabbar/mypage_tabbar.dart';

class UsageHistoryScreen extends StatefulWidget {
  final String title;

  const UsageHistoryScreen({
    super.key,
    required this.title,
  });

  @override
  State<UsageHistoryScreen> createState() => _UsageHistoryScreenState();
}

class _UsageHistoryScreenState extends State<UsageHistoryScreen> {
  late Future<List<MypageHistoryModel>> historyList = getHistoryList();

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<UsageHistoryScreenStyle>()!;

    return DefaultTabController(
      length: UsageHistoryTabType.values.length,
      child: Scaffold(
        backgroundColor: style.backgroundColor,
        appBar: TablingAppBar(
          title: widget.title,
          type: TablingAppBarType.back,
          onPressedLeading: () {},
          bottomWidget: UsageHistoryTabBar(
            height: style.tabBarTotalHeight,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  color: style.listBackgroundColor,
                  child: Column(
                    children: [
                      const UsageHistoryFilter(),
                      FutureBuilder(
                        future: historyList,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return ListView.builder(
                              physics: const ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: snapshot.data?.length,
                              itemBuilder: (context, index) {
                                final history = snapshot.data![index];
                                return UsageHistoryTile(
                                  restaurantName: history.restaurantName,
                                  status: history.status,
                                  info: [
                                    PairInfo(
                                      TablingStrings.orderDate,
                                      history.reservationDate ?? '',
                                    ),
                                    PairInfo(
                                      TablingStrings.orderType,
                                      history.type,
                                    ),
                                    PairInfo(
                                      TablingStrings.orderMenu,
                                      history.menuNames,
                                    ),
                                    PairInfo(
                                      TablingStrings.payAmount,
                                      '${history.price}원',
                                      // fixme (2023.8.9 bean) sprintf import 가 안되는지 계속 못찾아서 주석처리.
                                      // sprintf(TablingStrings.currencyFormat,
                                      //     [history.price]),
                                    ),
                                  ],
                                  buttons: const [
                                    TablingStrings.orderDetail,
                                    TablingStrings.cancelOrder,
                                  ],
                                );
                              },
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<List<MypageHistoryModel>> getHistoryList() async {
    final jsonString = await rootBundle.loadString(
      'packages/tabling_ui/assets/jsons/my-history.json',
    );
    final jsonResponse = json.decode(jsonString);
    List<MypageHistoryModel> lists = [];
    for (var item in jsonResponse) {
      final instance = MypageHistoryModel.fromJson(item);
      print(instance.restaurantName);
      lists.add(instance);
    }

    return lists;
  }
}

class UsageHistoryTabBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  UsageHistoryTabBar({
    super.key,
    required double height,
  }) : preferredSize = Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<UsageHistoryTabBarStyle>()!;

    return Container(
      alignment: style.alignment,
      padding: style.boxPadding,
      child: MyPageTabBar(
        selectedColor: style.selectedLabelColor,
        unselectedColor: style.unselectedLabelColor,
        fontSize: style.labelFontSize,
        labelPadding: style.labelPadding,
      ),
    );
  }
}

class UsageHistoryFilter extends StatefulWidget {
  const UsageHistoryFilter({super.key});

  @override
  State<UsageHistoryFilter> createState() => _UsageHistoryFilterState();
}

class _UsageHistoryFilterState extends State<UsageHistoryFilter> {
  //TODO: (2023.8.9 bean) list 를 TablingStrings 에 넣어놓고 사용하는 것은 어떨지?
  // final filterList = TablingStrings.usageHistoryFilter;
  final filterList = [
    TablingStrings.all,
    TablingStrings.waiting,
    TablingStrings.order,
    TablingStrings.reservation,
    TablingStrings.takeout,
  ];

  var isSelectedChipIndex = 0;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<UsageHistoryFilterStyle>()!;

    return Padding(
      padding: style.boxPadding,
      child: SizedBox(
        height: style.chipHeight,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                isSelectedChipIndex = index;
                setState(() {});
              },
              child: RoundedFilterChip(
                  label: filterList[index],
                  isSelected: isSelectedChipIndex == index),
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: style.spacing),
          itemCount: filterList.length,
        ),
      ),
    );
  }
}

class UsageHistoryListBuilder extends StatelessWidget {
  const UsageHistoryListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
