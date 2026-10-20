import 'package:creativa/fav_list/cubit/fav_list_cubit.dart';
import 'package:creativa/fav_list/cubit/fav_list_states.dart';
import 'package:creativa/fav_list/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavListScreen extends StatelessWidget {
  const FavListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<FavListCubit, FavListStates>(
          builder: (context, state) => ListView.separated(
            itemBuilder: (context, index) => ListTile(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.blue)),
              title: Text(state.items[index].title),
              trailing: IconButton(
                icon: Icon(
                  Icons.star,
                  color: state.items[index].isFav ? Colors.amber : Colors.grey,
                ),
                onPressed: () {
                  context.read<FavListCubit>().toggle(index);
                },
              ),
            ),
            itemCount: state.items.length,
            separatorBuilder: (context, index) => const Divider(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
