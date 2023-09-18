import 'package:searchfield/searchfield.dart';

import '../../../domains/models/ingredient.dart';

class CustomDropItems {
  SearchFieldListItem<MapEntry<String, int>> payemtType(
      MapEntry<String, int> value) {
    return SearchFieldListItem(
      value.key,
      item: value,
    );
  }

  SearchFieldListItem<Ingredient> ingredient(Ingredient value) {
    return SearchFieldListItem(
      value.name ?? "",
      item: value,
    );
  }
}
