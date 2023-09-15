import 'package:flutter/material.dart';

class UnfocusWidget extends StatelessWidget {
  const UnfocusWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final currentForcus = FocusScope.of(context);
    void unfocus() {
      currentForcus.unfocus();
    }

    return GestureDetector(
      onTap: unfocus,
      behavior: HitTestBehavior.translucent,
      child: child,
    );
  }
}
