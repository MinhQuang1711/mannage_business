import 'package:flutter/material.dart';
import 'package:mannager_business/gen/assets.gen.dart';

class BusinessIcon extends StatelessWidget {
  const BusinessIcon({super.key, required this.assetGenImage});
  final AssetGenImage assetGenImage;
  @override
  Widget build(BuildContext context) {
    return ImageIcon(AssetImage(assetGenImage.keyName));
  }
}
