import 'package:creativa/fav_list/models/item_model.dart';

abstract class FavListStates {
  final List<ItemModel> items;

  FavListStates({required this.items});
}

class AddToFavInitialState extends FavListStates {
  AddToFavInitialState({required super.items});
}

class Toggle extends FavListStates {
  Toggle({required super.items});
}
