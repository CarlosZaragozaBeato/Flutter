part of 'counter_bloc.dart';

abstract class CounterEvent {}

class CounterIncrementEvent extends CounterEvent {}

class CounterDecrementEvent extends CounterEvent {}

class CounterIncrementPlusTenEvent extends CounterEvent {}

class CounterDecrementMinusTenEvent extends CounterEvent {}
