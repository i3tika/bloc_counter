part of 'decrement_bloc.dart';

@immutable
abstract class DecrementEvent {}

class SendDecrementEvent extends DecrementEvent {
  final int counter;
  SendDecrementEvent({required this.counter});
}

class IncrementEventCounter extends DecrementEvent{
   final int counter;
  IncrementEventCounter({required this.counter});
}
 