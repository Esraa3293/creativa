import 'package:creativa/fav_list/cubit/fav_list_states.dart';
import 'package:creativa/fav_list/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavListCubit extends Cubit<FavListStates> {
  FavListCubit()
      : super(AddToFavInitialState(items: [
          ItemModel(title: "item1", isFav: true),
          ItemModel(title: "item2", isFav: false),
          ItemModel(title: "item3", isFav: true),
        ]));

  void toggle(int index) {
    List<ItemModel> updateList = List.from(state.items);
    updateList[index] = ItemModel(
        title: updateList[index].title, isFav: !updateList[index].isFav);
    emit(Toggle(items: updateList));
  }
}
