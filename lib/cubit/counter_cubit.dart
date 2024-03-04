import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart'; //

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() // constructor
      : super(
          CounterState(
              counterValue: 0,
              wasIncremented: false), // initial state of the counter app
        );

  // state. keyword is used to access the current state of the cubit
  void increment() => emit(
        CounterState(
            counterValue: state.counterValue + 1, wasIncremented: true),
      );

  void decrement() => emit(
        CounterState(
            counterValue: state.counterValue - 1, wasIncremented: false),
      );
}
