import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/colors.dart';
import 'package:go_router_example/tokens/core/typography.dart';
import 'package:go_router_example/widgets/buttons/rounded_text_widget.dart';

import '../widgets/appbar/tabling_appbar.dart';
import '../widgets/list_tile/switch_tile.dart';
import 'location_agreement_screen.dart';

class MarketingAgreementScreen extends StatelessWidget {
  const MarketingAgreementScreen({
    super.key,
    this.marketingData = const <Map<String, dynamic>>[
      {
        "icon": null,
        "title": "전체 알림 켜기",
      },
      {
        "icon": Icons.subdirectory_arrow_right_rounded,
        "useLeadingIcon": true, // HAJIN : 요것들을 넣어야 ㄴ 요게 나와서 넣어주었다!
        "title": "앱 푸쉬",
      },
      {
        "icon": Icons.subdirectory_arrow_right_rounded,
        "useLeadingIcon": true,
        "title": "이메일",
      },
      {
        "icon": Icons.subdirectory_arrow_right_rounded,
        "useLeadingIcon": true,
        "title": "SMS",
      },
    ],
  });

  final List<Map<String, dynamic>> marketingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TablingAppBar(
        title: "마케팅 알림 수신 동의",
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFF8F9FA),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 20,
                    color: Color(0xFF969FAC),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "이벤트와 할인 정보를 알려드립니다.",
                    style: TextStyle(
                      color: Color(0xFF6C7582),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList.builder(
            itemCount: marketingData.length,
            itemBuilder: (context, index) {
              var title = marketingData[index]["title"].toString();
              var icon = marketingData[index]["icon"];
              var useLeadingIcon =
                  marketingData[index]["useLeadingIcon"] == true ? true : false;
              // HAJIN : 얘만 bool이길래 외로워보여서 var로 바꿔보았다

              return SwitchTile(
                isSelected: true,
                leadingIcon: Icon(icon),
                useLeadingIcon: useLeadingIcon,
                title: title,
                onChangedHandler: (isSelected) {
                  if (isSelected) {}
                },
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 16,
        ),
        child: RoundedTextButton(
          // HAJIN : 접근 권한 설정에도 비슷한 버튼을 써서 한번 위젯을 빼보았다.
          padding: const EdgeInsets.symmetric(
            vertical: 17,
          ),
          backgroundColor: const Color(0xFFD7DBDF),
          buttonTitle: "저장",
          fontColor: TablingColors.white,
          fontSize: TablingTypography.fontSize18,
          fontWeight: TablingTypography.fontWeightBold,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LocationAgreementScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
