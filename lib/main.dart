import 'package:creativa/counter/counter_screen.dart';
import 'package:creativa/counter/cubit/counter_cubit.dart';
import 'package:creativa/fav_list/cubit/fav_list_cubit.dart';
import 'package:creativa/message/message_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'fav_list/fav_list_screen.dart';
import 'message/cubit/message_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
            create: (context) => FavListCubit(), child: FavListScreen()));
  }
}
