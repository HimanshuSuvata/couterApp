part of 'counter_bloc.dart';

abstract class CounterEvent {}

class CounterIncremented extends CounterEvent {}

class CounterDecremented extends CounterEvent {}

class CounterReset extends CounterEvent {}

class CounterMultiply extends CounterEvent {
  final int multiplyBy ;
  CounterMultiply({required this.multiplyBy});
}