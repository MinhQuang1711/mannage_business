import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: BusinessColors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: child,
    );
  }
}
