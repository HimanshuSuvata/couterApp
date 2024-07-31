import 'package:flutter_bloc/flutter_bloc.dart';

class CounterIncremented {}

class CounterBloc extends Bloc <CounterIncremented, int> {
  // Bloc works on the concept of events
  // to create eventHandler we can do it in the constructor like below
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state+1);
    });
  }

}