import 'package:assecad/src/shared/models/Item.dart';
import 'package:flutter/material.dart';

import 'home_repository.dart';
import 'home_state.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  List<ItemModel>? items;

  final repository = HomeRepository();

  void getItems() async {
    state = HomeState.loading;
    items = await repository.getItems();
    state = HomeState.success;
  }
}
