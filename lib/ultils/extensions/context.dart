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

  Future<DateTimeRange?> pickDateRange({
    DateTimeRange? initRange,
  }) async {
    return await showDateRangePicker(
      context: this,
      initialDateRange: initRange,
      firstDate: DateTime(2022),
      lastDate: DateTime(2030),
    );
  }

  Future showAnimatedDialog({required Widget dialog}) async {
    await showGeneralDialog(
      context: this,
      barrierLabel: '',
      barrierDismissible: true,
      pageBuilder: (ctx, a1, a2) {
        return Container();
      },
      transitionBuilder: (ctx, a1, a2, child) {
        return ScaleTransition(
          scale: Tween<double>(begin: 0, end: 1).animate(a1),
          child: FadeTransition(
            opacity: Tween<double>(begin: 0, end: 1).animate(a1),
            child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              child: dialog,
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 150),
    );
  }
}
