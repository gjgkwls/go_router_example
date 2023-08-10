import 'package:flutter/material.dart';
import 'package:go_router_example/models/setting_item.dart';
import 'package:go_router_example/theme/extensions.dart';
import 'package:go_router_example/tokens/core/core.dart';
import 'package:go_router_example/widgets/icons/icons.dart';

/// 마이페이지에서 사용하는 설정을 위한 ListTile
///
/// [SettingListTile]은 [title]을 필수로 가집니다.
///
/// [leading]은 [Widget]을 가지지만 대체로 [TablingIcon]을 활용해야합니다.
/// `title`, `trailing`, `description`은 String을 받으며 [SettingListTileStyle]을 이용하여 스타일을 지정합니다.
///
/// [SettingItem]을 이용하는 경우 [SettingListTile.renderWithItem] 사용을 고려해보세요.
class SettingListTile extends StatelessWidget {
  const SettingListTile({
    super.key,
    this.leading,
    required this.title,
    this.description,
    this.trailing,
    this.onTap,
  });

  final String title;
  final String? description;
  final String? trailing;
  final Widget? leading;
  final VoidCallback? onTap;

  bool get hasIcon => leading != null;
  bool get hasDescription => description != null && description!.isNotEmpty;

  CrossAxisAlignment get trailingAlignment =>
      hasDescription ? CrossAxisAlignment.center : CrossAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<SettingListTileStyle>()!;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: style.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: trailingAlignment,
              children: [
                // BORA: 해당코드를 이해하는데 많은 시간이 걸렸습니다.
                // ...은 여러개의 항목을 collection에 간편하게 추가할 수 있게 해준다. 라고 정리된걸 봤는데
                // 좀 더 이해하기 쉽도록 () 괄호를 추가하였습니다.
                // 좀 더 좋은 방법으로 개선하고 싶었지만 찾지못했습니다ㅠㅠ
                ...(hasIcon
                    ? <Widget>[
                        leading!,
                        const SizedBox(width: TablingSpaces.s10)
                      ]
                    : <Widget>[]),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Baseline(
                        baseline: 18,
                        baselineType: TextBaseline.ideographic,
                        child: Text(title, style: style.titleTextStyle),
                      ),
                      // BORA: 위와 동일합니다.
                      ...(hasDescription
                          ? [
                              Text(
                                description!,
                                style: style.descriptionTextStyle,
                              )
                            ]
                          : <Widget>[]),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (trailing != null)
                      Text(trailing!, style: style.trailingTextStyle),
                    TablingIcon.chevronRight(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  factory SettingListTile.renderWithItem(SettingItem item, VoidCallback onTap) {
    return SettingListTile(
      leading: item.icon,
      title: item.title,
      description: item.description,
      trailing: item.trailing,
      onTap: onTap,
    );
  }
}
