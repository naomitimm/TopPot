import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'coffee_size_event.dart';
part 'coffee_size_state.dart';

class CoffeeSizeBloc extends Bloc<CoffeeSizeEvent, CoffeeSizeState> {
  CoffeeSizeBloc() : super(CoffeeSizeInitial()) {
    on<SelectSmallCoffee>(_handleSelectSmallCoffee);
    on<SelectMediumCoffee>(_handleSelectMediumCoffee);
    on<SelectLargeCoffee>(_handleSelectLargeCoffee);
  }
  void _handleSelectSmallCoffee(SelectSmallCoffee event, Emitter emit) {
    try {
      emit(SelectingCoffeeSize());
      emit(SmallCoffeeSelected());
    } on Exception catch (error) {
      emit(SelectingCoffeeFailed(error: error));
    }
  }

  void _handleSelectMediumCoffee(SelectMediumCoffee event, Emitter emit) {
    try {
      emit(SelectingCoffeeSize());
      emit(MediumCoffeeSelected());
    } on Exception catch (error) {
      emit(SelectingCoffeeFailed(error: error));
    }
  }

  void _handleSelectLargeCoffee(SelectLargeCoffee event, Emitter emit) {
    try {
      emit(SelectingCoffeeSize());
      emit(LargeCoffeeSelected());
    } on Exception catch (error) {
      emit(SelectingCoffeeFailed(error: error));
    }
  }
}
