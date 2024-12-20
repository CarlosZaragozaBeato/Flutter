import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrementEvent>(((event, emit) {
      emit(IncrementState(state.counterValue + 1));
    }));
    on<CounterDecrementEvent>(((event, emit) {
      emit(DecrementState(state.counterValue - 1));
    }));
    on<CounterIncrementPlusTenEvent>((event, emit) {
      emit(IncrementState(state.counterValue + 10));
    });
    on<CounterDecrementMinusTenEvent>((event, emit) {
      emit(DecrementState(state.counterValue - 10));
    });
  }
}
