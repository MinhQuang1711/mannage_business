import 'package:flutter/material.dart';
import 'package:mannager_business/gen/assets.gen.dart';

class BusinessIcon extends StatelessWidget {
  const BusinessIcon(
      {super.key, required this.assetGenImage, this.color, this.onTap});
  final AssetGenImage assetGenImage;
  final Function()? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ImageIcon(
        AssetImage(assetGenImage.keyName),
        color: color,
      ),
    );
  }
}
