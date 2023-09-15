import 'package:searchfield/searchfield.dart';

class CustomDropItems {
  SearchFieldListItem<MapEntry<String, int>> payemtType(
      MapEntry<String, int> value) {
    return SearchFieldListItem(
      value.key,
      item: value,
    );
  }
}
