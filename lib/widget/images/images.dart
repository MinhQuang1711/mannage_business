import 'package:flutter/material.dart';

class BusinessImage extends StatelessWidget {
  const BusinessImage({
    super.key,
    required this.assetName,
  });
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 60,
      height: 75,
      child: Image(
        image: AssetImage(assetName),
        fit: BoxFit.cover,
      ),
    );
  }
}
