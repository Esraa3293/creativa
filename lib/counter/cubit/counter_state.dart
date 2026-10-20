abstract class CounterStates {
  final int counter;

  CounterStates({required this.counter});
}

class CounterInitialState extends CounterStates {
  CounterInitialState({required super.counter});
}

class CounterIncrementState extends CounterStates {
  CounterIncrementState({required super.counter});
}

class CounterDecrementState extends CounterStates {
  CounterDecrementState({required super.counter});
}
