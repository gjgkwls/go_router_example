import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';
import 'package:go_router_example/widgets/icons/icons.dart';
import 'package:go_router_example/widgets/upcoming_card/upcoming_card_wrapper.dart';

class WaitingUpcomingCard extends StatelessWidget {
  const WaitingUpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return UpcomingCardWrapper(
      child: Column(children: [
        Row(
          children: [
            const Text(
              '파이브가이즈',
              style: TextStyle(
                fontSize: TablingTypography.fontSize16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            const Text('12:00 입장 예정'),
            const SizedBox(width: 4),
            TablingIcon.info(width: 18, height: 18),
          ],
        ),
        Row(
          children: [
            const Text(
              '현재 내 순서: 5번째',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: TablingTypography.fontSize20,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.refresh),
              constraints: const BoxConstraints(
                minWidth: 30,
                minHeight: 30,
                maxWidth: 30,
                maxHeight: 30,
              ),
              style: IconButton.styleFrom(
                backgroundColor: TablingColors.white,
                foregroundColor: TablingColors.black,
                padding: EdgeInsets.zero,
                iconSize: 18,
              ),
            )
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: TablingColors.white,
              foregroundColor: TablingColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: const Text('대기 확정 코드 입력하기 >'),
          ),
        ),
      ]),
    );
  }
}
