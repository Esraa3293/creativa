import 'package:creativa/message/cubit/message_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageCubit extends Cubit<MessageStates> {
  MessageCubit() : super(MessageInitialState(name: ""));

  void displayName(String name){
    emit(MessagePrintState(name: name));
  }
}
