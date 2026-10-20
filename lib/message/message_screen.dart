import 'package:creativa/message/cubit/message_cubit.dart';
import 'package:creativa/message/cubit/message_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    label: BlocBuilder<MessageCubit, MessageStates>(
                        builder: (context, state) =>
                            const Text("Enter your name")),
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 30),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                onChanged: (value) {
                  context.read<MessageCubit>().displayName(value);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<MessageCubit, MessageStates>(
                builder: (context, state) => Text(
                  state.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Colors.blue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
