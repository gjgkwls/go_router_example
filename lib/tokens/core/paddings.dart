import 'package:flutter/widgets.dart';
import 'package:go_router_example/tokens/core/core.dart';

class TablingPaddings {
  TablingPaddings._();

  /// Horizontal
  static const horizontalXSmall =
      EdgeInsets.symmetric(horizontal: TablingSpaces.s4);
  static const horizontalSmall =
      EdgeInsets.symmetric(horizontal: TablingSpaces.s8);
  static const horizontalMedium =
      EdgeInsets.symmetric(horizontal: TablingSpaces.s16);
  static const horizontalLarge =
      EdgeInsets.symmetric(horizontal: TablingSpaces.s24);
  static const horizontalXLarge =
      EdgeInsets.symmetric(horizontal: TablingSpaces.s32);

  /// Vertical
  static const verticalXSmall =
      EdgeInsets.symmetric(horizontal: TablingSpaces.s4);
  static const verticalSmall = EdgeInsets.symmetric(vertical: TablingSpaces.s8);
  static const verticalMedium =
      EdgeInsets.symmetric(vertical: TablingSpaces.s16);
  static const verticalLarge =
      EdgeInsets.symmetric(vertical: TablingSpaces.s24);
  static const verticalXLarge =
      EdgeInsets.symmetric(vertical: TablingSpaces.s32);

  /// Left
  static const leftXSmall = EdgeInsets.only(left: TablingSpaces.s4);
  static const leftSmall = EdgeInsets.only(left: TablingSpaces.s8);
  static const leftMedium = EdgeInsets.only(left: TablingSpaces.s16);
  static const leftLarge = EdgeInsets.only(left: TablingSpaces.s24);
  static const leftXLarge = EdgeInsets.only(left: TablingSpaces.s32);

  /// Right
  static const rightXSmall = EdgeInsets.only(right: TablingSpaces.s4);
  static const rightSmall = EdgeInsets.only(right: TablingSpaces.s8);
  static const rightMedium = EdgeInsets.only(right: TablingSpaces.s16);
  static const rightLarge = EdgeInsets.only(right: TablingSpaces.s24);
  static const rightXLarge = EdgeInsets.only(right: TablingSpaces.s32);

  /// Top
  static const topXSmall = EdgeInsets.only(top: TablingSpaces.s4);
  static const topSmall = EdgeInsets.only(top: TablingSpaces.s8);
  static const topMedium = EdgeInsets.only(top: TablingSpaces.s16);
  static const topLarge = EdgeInsets.only(top: TablingSpaces.s24);
  static const topXLarge = EdgeInsets.only(top: TablingSpaces.s32);

  /// Bottom
  static const bottomXSmall = EdgeInsets.only(bottom: TablingSpaces.s4);
  static const bottomSmall = EdgeInsets.only(bottom: TablingSpaces.s8);
  static const bottomMedium = EdgeInsets.only(bottom: TablingSpaces.s16);
  static const bottomLarge = EdgeInsets.only(bottom: TablingSpaces.s24);
  static const bottomXLarge = EdgeInsets.only(bottom: TablingSpaces.s32);
}
