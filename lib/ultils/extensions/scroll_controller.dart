import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

extension ScrollControllerExtension on ScrollController {
  bool listenScrollDownEvent() {
    return position.userScrollDirection == ScrollDirection.reverse;
  }

  bool listenScrollUpEvent() {
    return position.userScrollDirection == ScrollDirection.forward;
  }

  bool listenScrollEndBottomEvent() {
    return position.maxScrollExtent == position.pixels;
  }

  void listener({Function()? action}) {
    addListener(() {
      action;
    });
  }
}
