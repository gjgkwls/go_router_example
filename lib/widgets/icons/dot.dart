import 'package:flutter/cupertino.dart';

class Dot extends StatelessWidget {
  final Color? color;
  final double size;
  final double padding;

  const Dot({
    super.key,
    this.color,
    this.size = 2,
    this.padding = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: padding),
        Container(
          width: size,
          height: size,
          decoration: ShapeDecoration(
            color: color ?? const Color(0xFFD3D7E1),
            shape: const OvalBorder(),
          ),
        ),
        SizedBox(width: padding),
      ],
    );
  }
}
