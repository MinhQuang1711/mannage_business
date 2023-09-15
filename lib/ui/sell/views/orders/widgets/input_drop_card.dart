import 'package:flutter/material.dart';
import 'package:mannager_business/widget/drop_down/drop_buttons/drop_buttons.dart';
import 'package:searchfield/searchfield.dart';

import '../../../../../const/text_style/text_style.dart';

class InputDropCard<T> extends StatefulWidget {
  const InputDropCard({
    super.key,
    this.valueName,
    required this.title,
    required this.items,
    this.callBackUpdateValue,
    required this.suggestions,
  });
  final String? valueName;
  final String title;
  final List<T> items;
  final Function(String?)? callBackUpdateValue;
  final SearchFieldListItem<T> Function(T) suggestions;

  @override
  State<InputDropCard<T>> createState() => _InputDropCardState<T>();
}

class _InputDropCardState<T> extends State<InputDropCard<T>> {
  var _controller = TextEditingController();
  void _initController() {
    _controller = TextEditingController(text: widget.valueName);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _initController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 22,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: captionRegular,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: CustomDropButtons<T>(
              listItems: widget.items,
              controller: _controller,
              suggestions: widget.suggestions,
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }
}
