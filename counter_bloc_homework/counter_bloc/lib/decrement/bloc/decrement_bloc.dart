import 'dart:math';

import 'package:bloc/bloc.dart';
// import 'package:bloc_test/counter_repo.dart';
import 'package:meta/meta.dart';

part 'decrement_event.dart';
part 'decrement_state.dart';

class DecrementBloc extends Bloc<DecrementEvent, DecrementState> {
  DecrementBloc() : super(DecrementInitial()) {
    on<SendDecrementEvent>((
      event,
      emit,
    ) {
      int result = event.counter - 1;
      emit(DecrementSucces(counter: result));
    });
    on<IncrementEventCounter>((
      event, 
      emit
      ) {
        int resultplus = event.counter + 1;
        emit(DecrementSucces(counter: resultplus));
      },
    );
  }
  // final CounterRepo repo;
}
