import 'package:flutter/material.dart';

extension ContextEx on BuildContext {
  Future showBottomSheet(Widget child) async {
    const borderRadius = Radius.circular(8);
    await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      builder: (context) => child,
      shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.only(topLeft: borderRadius, topRight: borderRadius),
      ),
    );
  }
}
