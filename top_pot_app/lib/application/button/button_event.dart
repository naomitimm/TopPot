part of 'button_bloc.dart';

@immutable
abstract class ButtonEvent extends Equatable {}

class ToggleTheButton extends ButtonEvent {
  @override
  List<Object?> get props => [];
}
