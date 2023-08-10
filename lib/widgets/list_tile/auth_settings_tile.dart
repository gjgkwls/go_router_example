import 'package:flutter/cupertino.dart';

import '../../tokens/core/typography.dart';

class AuthSettingTile extends StatelessWidget {
  final String title;
  final String description;

  const AuthSettingTile({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            // HAJIN : 엇 이것두..!ㅎ
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 24,
            ),
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF11181C),
                    fontSize: TablingTypography.fontSize18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                const Text(
                  "OFF",
                  style: TextStyle(
                    color: Color(0xFF525965),
                    fontSize: TablingTypography.fontSize16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Text(
              description,
              style: const TextStyle(
                color: Color(0xFF878C97),
                fontSize: TablingTypography.fontSize12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
