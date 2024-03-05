import 'package:flutter_bloc/flutter_bloc.dart';

// Define the events the bloc will react to.
// Events are the input to a Bloc added in response to user interactions
// such as button presses or lifecycle events like page loads.
sealed class CounterEvent {}

final class CounterIncrementPressed extends CounterEvent {}

// Create CounterBloc: Define the state the bloc will manage, and the events it will react to.
class CounterBloc extends Bloc<CounterEvent, int> {
  // Create the initial state of the bloc.
  CounterBloc() : super(0) {
    // Register the event handlers for the bloc.
    on<CounterIncrementPressed>((event, emit) {
      // handle incoming `CounterIncrementPressed` event
      emit(state + 1);
    });
  }

  // Alternative to overriding methods in a global observer class.

  // @override
  // void onEvent(CounterEvent event) {
  //   super.onEvent(event);
  //   print(event);
  // }

  // // Override the `onChange` method to log state changes.
  // @override
  // void onChange(Change<int> change) {
  //   super.onChange(change);
  //   print(change);
  // }

  // // Transition: A transition is the change from one state to another.
  // // A Transition consists of the current state, the event, and the next state.
  // @override
  // void onTransition(Transition<CounterEvent, int> transition) {
  //   super.onTransition(transition);
  //   print(transition);
  // }
}
