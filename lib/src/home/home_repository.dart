import 'dart:convert';

import 'package:assecad/src/shared/models/Item.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<List<ItemModel>> getItems() async {
    final response = await rootBundle.loadString("assets/utils/items.json");
    final list = jsonDecode(response) as List;
    final items = list.map((e) => ItemModel.fromMap(e)).toList();

    return items;
  }
}
