// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'button_event.dart';
part 'button_state.dart';

class ButtonBloc extends Bloc<ButtonEvent, ButtonState> {
  ButtonBloc() : super(ButtonInitial()) {
    on<ToggleTheButton>(_handleButtonToggle);
  }

  void _handleButtonToggle(ToggleTheButton event, Emitter emit) {
    try {
      emit(ButtonToggled());
    } on Exception catch (error) {
      emit(ButtonToggleFailed(error: error));
    }
  }
}
