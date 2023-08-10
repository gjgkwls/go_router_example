import 'package:flutter/material.dart';
import 'package:go_router_example/models/setting_item.dart';
import 'package:go_router_example/tokens/core/core.dart';
import 'package:go_router_example/widgets/setting_list_tile.dart';
import 'package:go_router_example/widgets/setting_section_title.dart';

class MyPageSettingScreen extends StatelessWidget {
  MyPageSettingScreen({super.key});

  final notificationSettings = [
    const SettingItem(
      title: '알림 권한 설정',
      trailing: '허용',
      description: '허용하지 않으면 예약/대기/주문 이용 관련\n안내를 받을 수 없어요.',
      route: '/',
    ),
    const SettingItem(title: '마케팅 알림 수신 동의', route: '/'),
  ];

  final setupSettings = <SettingItem>[
    const SettingItem(
      title: '위치기반 서비스 이용약관 설정',
      trailing: '동의',
      route: '/',
    ),
    const SettingItem(title: '접근 권한 설정', route: '/'),
    const SettingItem(
      title: '현재 버전',
      trailing: '최신버전 사용 중',
      route: '/',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TablingColors.white,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            backgroundColor: TablingColors.white,
            foregroundColor: TablingColors.black,
            title: Text('앱 설정'),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SettingSectionTitle(title: '알림'),
                ...notificationSettings.map((SettingItem item) {
                  return SettingListTile.renderWithItem(item, () {});
                }),
                const Divider(),
                const SettingSectionTitle(title: '환경설정'),
                ...setupSettings.map((SettingItem item) {
                  return SettingListTile.renderWithItem(item, () {});
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
