import 'package:flutter/material.dart';

enum AssetType { svg, png }

class CommonIcon extends StatelessWidget {
  static const String _package = 'tabling_ui';
  static const String _urlBasePath = 'assets/icons/';

  final AssetType assetType;
  final String assetName;
  final double? width;
  final double? height;
  final BoxFit? fit;

  final Color? svgTint;

  const CommonIcon.svg(
    this.assetName, {
    Key? key,
    this.width,
    this.height,
    this.fit,
    Color? tint,
  })  : assetType = AssetType.svg,
        svgTint = tint,
        super(key: key);

  const CommonIcon.png(
    this.assetName, {
    Key? key,
    this.width,
    this.height,
    this.fit,
  })  : assetType = AssetType.png,
        svgTint = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (assetType == AssetType.png && !assetName.endsWith('.png')) {
      throw Exception('not png asset.');
    } else if (assetType == AssetType.svg && !assetName.endsWith('.svg')) {
      throw Exception('not svg asset.');
    }

    Widget image = const Icon(Icons.access_time);

    return _isResizing()
        ? SizedBox(width: width, height: height, child: image)
        : image;
  }

  bool _isResizing() => width != null || height != null;
}
