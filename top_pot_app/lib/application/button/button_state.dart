part of 'button_bloc.dart';

@immutable
abstract class ButtonState extends Equatable {}

class ButtonInitial extends ButtonState {
  @override
  List<Object?> get props => [];
}

class ButtonToggled extends ButtonState {
  @override
  List<Object?> get props => [];
}

class ButtonToggleFailed extends ButtonState {
  final Exception error;
  ButtonToggleFailed({required this.error});
  @override
  List<Object?> get props => [error];
}
