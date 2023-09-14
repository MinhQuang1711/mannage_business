import 'package:flutter/material.dart';
import 'package:mannager_business/const/text_style/text_style.dart';

class BusinessListView<T> extends StatelessWidget {
  const BusinessListView({
    super.key,
    this.onRefresh,
    required this.items,
    required this.child,
  });
  final List<T> items;
  final Widget child;
  final Future<void> Function()? onRefresh;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh ?? () async {},
      child: items.isEmpty
          ? const Text(
              "Danh sách trống",
              style: captionRegular,
            )
          : child,
    );
  }
}
