import 'package:flutter/material.dart';
import 'package:go_router_example/models/setting_item.dart';
import 'package:go_router_example/tokens/core/core.dart';
import 'package:go_router_example/widgets/icons/icons.dart';
import 'package:go_router_example/widgets/setting_list_tile.dart';
import 'package:go_router_example/widgets/upcoming_card/empty_upcoming_card.dart';

class MyPageScreen extends StatelessWidget {
  MyPageScreen({
    super.key,
    required this.username,
    required this.onUsernameTap,
    required this.onSettingTap,
    required this.onMenuItemTap,
  });

  final String username;
  final VoidCallback onUsernameTap;
  final VoidCallback onSettingTap;
  final void Function(SettingItem item) onMenuItemTap;

  final List<SettingItem> list1 = <SettingItem>[
    SettingItem(
      title: '테이블링 페이',
      trailing: '289,000원',
      route: '/',
      icon: TablingIcon.pay(),
    ),
    SettingItem(
      title: '보유 폭탄',
      trailing: '200개',
      route: '/',
      icon: TablingIcon.bomb(),
    ),
    SettingItem(
      title: '내 리뷰',
      route: '/',
      icon: TablingIcon.review(),
    ),
    SettingItem(
      title: '이용 내역',
      route: '/',
      icon: TablingIcon.history(),
    ),
    SettingItem(
      title: '최근 본 매장',
      route: '/',
      icon: TablingIcon.restaurant(),
    ),
  ];

  final List<SettingItem> list2 = <SettingItem>[
    SettingItem(
      title: '공지사항',
      route: '/',
      icon: TablingIcon.notice(),
    ),
    SettingItem(
      title: '고객센터',
      route: '/',
      icon: TablingIcon.customer(),
    ),
    SettingItem(
      title: '약관 및 정책',
      route: '/',
      icon: TablingIcon.policy(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // BORA: <Widget> 의 역할이 무엇인지 잠깐 고민했습니다.
        // 알고보니 저희가 children:[], slivers: [], actions: [] 와 같이 여러 위젯을 넣는경우 사용하는
        // [] 대괄호의 타입을 명시적으로 표기한걸 알았습니다.
        // 빼도 상관없다고 하니 저는 앞으로 계속 빼고 쓸겁니다.
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            title: GestureDetector(
              onTap: onUsernameTap,
              child: Row(
                children: <Widget>[
                  Text('$username님'),
                  TablingIcon.chevronRight(width: 20, height: 20),
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: TablingIcon.gear(),
                onPressed: onSettingTap,
              ),
            ],
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: TablingSpaces.s16),
            sliver: SliverToBoxAdapter(
              child: EmptyUpcomingCard(),
            ),
          ),
          // 메뉴리스트
          SliverList(
            delegate: SliverChildListDelegate([
              ...list1.map(
                (item) => SettingListTile.renderWithItem(
                  item,
                  () => onMenuItemTap(item),
                ),
              ),
              const Divider(),
              ...list2.map(
                (item) => SettingListTile.renderWithItem(
                  item,
                  () => onMenuItemTap(item),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
