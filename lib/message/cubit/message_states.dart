abstract class MessageStates {
  final String name;

  MessageStates({required this.name});
}

class MessageInitialState extends MessageStates {
  MessageInitialState({required super.name});
}

class MessagePrintState extends MessageStates {
  MessagePrintState({required super.name});
}
