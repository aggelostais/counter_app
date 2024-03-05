
import 'package:bloc/bloc.dart';
import 'package:counter_app/counter_block.dart';
import 'package:counter_app/simple_bloc_observer.dart';

// Future: A future represents a potential value, or error, that will be available at some time in the future.
// Future<void> main() async {
//   final bloc = CounterBloc(); // Create a new instance of the CounterBloc
//   print(bloc.state); // 0 
//   bloc.add(CounterIncrementPressed()); // Add a new event to the bloc
//   await Future.delayed(Duration.zero); // Wait for the bloc to process the event
//   print(bloc.state); // 1
//   await bloc.close(); // Close the bloc when it is no longer needed
// }

void main() {
  Bloc.observer = SimpleBlocObserver();
  CounterBloc()
    ..add(CounterIncrementPressed()) //..add(CounterIncrementPressed()) is equivalent to bloc.add(CounterIncrementPressed())
    ..close();  // ..close() is equivalent to await bloc.close()
}