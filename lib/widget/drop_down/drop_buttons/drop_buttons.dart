import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:searchfield/searchfield.dart';

class CustomDropButtons<T> extends StatelessWidget {
  const CustomDropButtons({
    super.key,
    required this.listItems,
    required this.border,
    required this.errorBorder,
    required this.focusBorder,
    required this.validate,
    required this.suggestions,
  });
  final List<T> listItems;
  final InputBorder border;
  final InputBorder errorBorder;
  final InputBorder focusBorder;
  final String Function(String?) validate;
  final SearchFieldListItem<T> Function(T?) suggestions;

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 10, vertical: 12);
    return SearchField(
      validator: validate,
      searchInputDecoration: InputDecoration(
        isDense: true,
        border: border,
        contentPadding: padding,
        focusedBorder: focusBorder,
        enabledBorder: errorBorder,
        suffixIcon: const Icon(
          Icons.keyboard_arrow_down_outlined,
          color: BusinessColors.dark,
        ),
      ),
      suggestions: listItems.map((e) => suggestions(e)).toList(),
    );
  }
}
