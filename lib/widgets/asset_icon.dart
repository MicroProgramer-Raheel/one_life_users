import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetIcon extends StatelessWidget {
  String path;
  double? height, width;
  BoxFit fit;
  AlignmentGeometry alignment;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return
      SvgPicture.asset(
      path,
      height: height,
      width: width,
        fit: fit,
        alignment: alignment,
        color: color,
    );
  }

  AssetIcon({
    required this.path,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.color,
  });
}
