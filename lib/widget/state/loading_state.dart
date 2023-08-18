import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';

class LoadingState extends StatelessWidget {
  const LoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: BusinessColors.blue,
      ),
    );
  }
}
