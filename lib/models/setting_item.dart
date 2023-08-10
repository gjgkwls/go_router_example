import 'package:flutter/widgets.dart';
import 'package:go_router_example/widgets/icons/icons.dart';

// BORA: 해당 클래스는 setting_list_tile.dart, setting_section_tile.dart 에 대한 모델 클래스로
// 파악이 되는데 한가지 궁금증이 생겼습니다.
// 나중에 서버API를 적용하게되면, 응답 데이터를 파싱해서 해당 데이터에 적용하는 작업으로 진행되는건지,
// 그래서 창주님께 질문드렸더니 API 요청/응답 모델 따로 생성될거라고 답변주셨습니다.
// 생각해보니 그게 맞는거 같은데 왜 이게 궁금했던건지 저도 갑자기 의문이 듭니다.

@immutable
class SettingItem {
  final String title;
  final String route;
  final TablingIcon? icon;
  final String? trailing;
  final String? description;

  bool get hasIcon => icon != null;
  bool get hasTrailing => trailing != null && trailing!.isNotEmpty;
  bool get hasDescription => description != null && description!.isNotEmpty;

  const SettingItem({
    required this.title,
    required this.route,
    this.icon,
    this.description = '',
    this.trailing = '',
  });

  SettingItem copyWith({
    String? title,
    String? route,
    TablingIcon? icon,
    String? trailing,
    String? description,
  }) {
    return SettingItem(
      title: title ?? this.title,
      route: route ?? this.route,
      icon: icon ?? this.icon,
      trailing: trailing ?? this.trailing,
      description: description ?? this.description,
    );
  }

  @override
  String toString() {
    return '''SettingItem {
  title: $title,
  route: $route,
  icon: $icon,
  trailing: $trailing,
  description: $description,
}''';
  }
}
