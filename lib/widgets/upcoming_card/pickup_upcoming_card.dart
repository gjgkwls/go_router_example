import 'package:flutter/material.dart';
import 'package:go_router_example/tokens/core/core.dart';
import 'package:go_router_example/widgets/upcoming_card/upcoming_card_wrapper.dart';

class PickupUpcomingCard extends StatelessWidget {
  const PickupUpcomingCard({
    super.key,
    required this.restaurantName,
    required this.orderNumber,
    required this.title,
    required this.buttonText,
    this.showRefresh = false,
    this.onRefreshTap,
    this.onButtonTap,
  });

  final String restaurantName;
  final String orderNumber;
  final String title;
  final bool showRefresh;
  final String buttonText;

  final VoidCallback? onRefreshTap;
  final VoidCallback? onButtonTap;

  @override
  Widget build(BuildContext context) {
    return UpcomingCardWrapper(
      child: Column(children: [
        Row(
          children: [
            Text(
              restaurantName,
              style: const TextStyle(
                fontSize: TablingTypography.fontSize16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            Text(orderNumber),
          ],
        ),
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: TablingTypography.fontSize20,
              ),
            ),
            if (showRefresh)
              IconButton(
                onPressed: onRefreshTap,
                icon: const Icon(Icons.refresh),
                padding: EdgeInsets.zero,
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
            onPressed: onButtonTap,
            child: Text(buttonText),
          ),
        ),
      ]),
    );
  }
}
