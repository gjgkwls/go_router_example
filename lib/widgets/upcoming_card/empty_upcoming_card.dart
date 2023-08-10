import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';
import 'package:go_router_example/widgets/icons/icons.dart';
import 'package:go_router_example/widgets/upcoming_card/upcoming_card_wrapper.dart';

class EmptyUpcomingCard extends StatelessWidget {
  const EmptyUpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return UpcomingCardWrapper(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: TablingSpaces.s10),
          TablingIcon.info(width: 20, height: 20),
          const SizedBox(height: TablingSpaces.s10),
          const Text(
            '현재 이용 예정인 식사가 없습니다.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TablingSpaces.s20),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: TablingColors.white,
              foregroundColor: TablingColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              '내 주변 식당 보러 가기 >',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
