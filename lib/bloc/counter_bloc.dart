import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  // Bloc works on the concept of events
  // to create eventHandler we can do it in the constructor like below
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecremented>((event, emit) {
      emit(state - 1);
    });

    on<CounterReset>((event, emit) {
      emit(0);
    });

    on<CounterMultiply>(_onCounterSquare);
  }

  void _onCounterSquare (event, emit) {
    emit(state);
  }

}
