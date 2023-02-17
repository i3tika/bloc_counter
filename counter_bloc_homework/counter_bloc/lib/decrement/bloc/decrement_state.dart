part of 'decrement_bloc.dart';

@immutable
abstract class DecrementState {}

class DecrementInitial extends DecrementState {
  // final int = 0;
}

class DecrementSucces extends DecrementState {
  final int counter;
  DecrementSucces({required this.counter});
}

class DecrementSuccesMinus extends DecrementState {
  final int counter;
  DecrementSuccesMinus({required this.counter});
}

class IncrementSucces extends DecrementState {
  final int counter;
  IncrementSucces({required this.counter});
}

class Decrementerror extends DecrementState {}
