import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:searchfield/searchfield.dart';

class CustomDropButtons<T> extends StatelessWidget {
  const CustomDropButtons({
    super.key,
    this.border,
    this.hintText,
    this.validate,
    this.errorBorder,
    this.focusBorder,
    this.onSuggestionTap,
    required this.listItems,
    required this.suggestions,
    this.padding,
    this.controller,
  });

  final EdgeInsets? padding;
  final String? hintText;
  final List<T> listItems;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final InputBorder? focusBorder;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final SearchFieldListItem<T> Function(T) suggestions;
  final Function(SearchFieldListItem<T>)? onSuggestionTap;

  @override
  Widget build(BuildContext context) {
    const defaultPadding = EdgeInsets.symmetric(horizontal: 10, vertical: 9);
    return SearchField(
      readOnly: true,
      validator: validate,
      controller: controller,
      onSuggestionTap: onSuggestionTap,
      searchInputDecoration: InputDecoration(
        isDense: true,
        border: border,
        hintText: hintText,
        contentPadding: padding ?? defaultPadding,
        focusedBorder: focusBorder,
        enabledBorder: errorBorder,
        hintStyle: captionRegular.copyWith(color: BusinessColors.dark),
      ),
      suggestions: listItems.map((e) => suggestions(e)).toList(),
    );
  }
}
