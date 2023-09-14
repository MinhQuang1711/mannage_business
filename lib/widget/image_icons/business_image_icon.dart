import 'package:flutter/material.dart';
import 'package:mannager_business/gen/assets.gen.dart';

class BusinessIcon extends StatelessWidget {
  const BusinessIcon({super.key, required this.assetGenImage, this.color});
  final AssetGenImage assetGenImage;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(assetGenImage.keyName),
      color: color,
    );
  }
}
