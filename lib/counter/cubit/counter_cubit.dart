import 'package:creativa/counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit():super (CounterInitialState(counter: 0));

  void increment(){
    emit(CounterIncrementState(counter: state.counter+1));
  }

  void decrement(){
    emit(CounterDecrementState(counter: state.counter-1));
  }
}