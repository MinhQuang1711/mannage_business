import 'dart:developer';

import 'package:flutter/foundation.dart';

void logDebug(Object? object) {
  if (kDebugMode || kProfileMode || kReleaseMode) {
    log(object.toString());
  }
}