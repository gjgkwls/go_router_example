import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';
import 'package:go_router_example/widgets/buttons/rounded_text_widget.dart';

import '../widgets/appbar/tabling_appbar.dart';
import '../widgets/list_tile/auth_settings_tile.dart';

class AuthSettingsScreen extends StatelessWidget {
  const AuthSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TablingAppBar(
        title: "접근 권한 설정",
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Text(
                  '휴대폰 설정 앱 > 테이블링 > 권한에서\nOFF된 권한을 허용해 주세요.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF525965),
                    fontSize: TablingTypography.fontSize18,
                    fontWeight: TablingTypography.fontWeightMedium,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 16,
              ),
              child: RoundedTextButton(
                // HAJIN : 접근 권한 설정에도 비슷한 버튼을 써서 한번 위젯을 빼보았슴당.
                padding: const EdgeInsets.symmetric(
                  vertical: 17,
                ),
                backgroundColor: const Color(0xFF717171),
                buttonTitle: "설정 바로 가기>",
                fontColor: TablingColors.white,
                fontSize: TablingTypography.fontSize18,
                fontWeight: TablingTypography.fontWeightBold,
              ),
            ),
          ),
          const AuthSettingTile(
            title: "위치 권한",
            description: "현재 위치 기반으로 매장 추천 및 탐색을 하기 위해 위치 접근 권한이 필요합니다.",
          ),
          const AuthSettingTile(
            title: "카메라 권한",
            description: "리뷰 작성 시 사진 업로드를 위해 카메라 접근 권한이 필요합니다.",
          ),
        ],
      ),
    );
  }
}
