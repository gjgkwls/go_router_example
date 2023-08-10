import 'package:flutter/material.dart';
import 'package:go_router_example/theme/extensions.dart';

class SwitchTile extends StatefulWidget {
  final String title;
  final Function(bool) onChangedHandler;
  final bool useLeadingIcon;
  final Widget? leadingIcon;
  final bool isSelected;

  late bool switchSelected = isSelected;

  SwitchTile({
    super.key,
    required this.title,
    required this.onChangedHandler,
    required this.useLeadingIcon,
    required this.isSelected,
    this.leadingIcon,
  });

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<SettingListTileStyle>()!;

    Widget? iconWidget = widget.leadingIcon;
    iconWidget ??= const SizedBox();

    return Padding(
      padding: style
          .padding!, // Conatiner에 padding만 있는 것 같아서 Container대신 Padding위젯으로 사용해보았다!
      child: Row(
        children: [
          if (widget.useLeadingIcon) // HAJIN : 삼항연산자 대신에 요로케 ?
            iconWidget, // HAJIN : 원래는 얘를 넣는거겠지?
          // widget.useLeadingIcon
          //     ? const Icon(
          //         Icons.subdirectory_arrow_right_rounded,
          //       )
          //     : const SizedBox(),
          const SizedBox(
            width: 6,
          ),
          Text(
            widget.title,
            style: style.titleTextStyle,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
