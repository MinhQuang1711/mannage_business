import 'package:flutter/material.dart';
import 'package:mannager_business/widget/snack_bar.dart';

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

  void showSnackbar({required isSuccess, required content}) {
    ScaffoldMessenger.of(this).showSnackBar(
      BusinessSnackbar(isSuccess: isSuccess, content: content),
    );
  }
}
