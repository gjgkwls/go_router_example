import 'package:flutter/material.dart';

import '../../theme/extensions/app_bar_extension.dart';
import '../icons/icons.dart';

class TablingAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TablingAppBarType type;
  final String title;

  // FIXME: onPressedLeading -> 리뷰 후 필수 값으로 변경 (2023.8.8 bean)
  final VoidCallback? onPressedLeading;
  final PreferredSizeWidget? bottomWidget;

  const TablingAppBar({
    super.key,
    this.type = TablingAppBarType.common,
    required this.title,
    this.onPressedLeading,
    this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    // 이 방식보다는 iconTheme를 밖으로 빼고싶다. main.dart로
    // 근데 main.dart에서 AppBar에 iconTheme, backgroundColor만 넣고,
    // 각 화면에서 AppBar를 추가로 넣었더니 앱바가 두개씩 생겼다.
    // > 찾았다. theme 에 있었네!!
    final style = Theme.of(context).extension<AppBarStyle>()!;

    return AppBar(
      elevation: 0,
      backgroundColor: style.backgroundColor,
      leadingWidth: style.leadingWidth,
      leading: type == TablingAppBarType.common
          ? null
          : IconButton(
              onPressed: onPressedLeading,
              icon: type.icon!,
              iconSize: style.leadingIconSize,
              padding: style.leadingIconPadding,
            ),
      title: Text(
        title,
        style: style.titleTextStyle,
      ),
      bottom: bottomWidget,
    );
  }

  // AppBar 를 커스텀 하려면 PreferredSizeWidget을 필요로 하고
  // 그걸 사용하려면 width, height 값을 줘야하는데
  // width는 0을 줘도 잘나온다.
  // MediaQuery.of(context).size.width 이걸 쓰고싶지만 context를 알수가 없어 쓸수가 없다.
  // 어떻게 해야하는걸까??
  @override
  Size get preferredSize => Size.fromHeight(48 + _getAdditionalHeight());

  double _getAdditionalHeight() => (bottomWidget?.preferredSize.height ?? 0);
}

enum TablingAppBarType {
  common,
  back,
  close;

  TablingIcon? get icon => switch (this) {
        common => null,
        back => TablingIcon.backBtn(),
        close => TablingIcon.closeBtn(),
      };
}
