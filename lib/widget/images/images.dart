import 'package:flutter/material.dart';

class BusinessImage extends StatelessWidget {
  const BusinessImage({
    super.key,
    required this.assetName,
    this.width,
    this.height,
  });
  final double? width;
  final double? height;
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: width ?? 60,
      height: height ?? 75,
      child: Image(
        image: AssetImage(assetName),
        fit: BoxFit.cover,
      ),
    );
  }
}
