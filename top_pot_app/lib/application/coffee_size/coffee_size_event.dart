part of 'coffee_size_bloc.dart';

@immutable
abstract class CoffeeSizeEvent extends Equatable {}

class SelectSmallCoffee extends CoffeeSizeEvent {
  @override
  List<Object?> get props => [];
}

class SelectMediumCoffee extends CoffeeSizeEvent {
  @override
  List<Object?> get props => [];
}

class SelectLargeCoffee extends CoffeeSizeEvent {
  @override
  List<Object?> get props => [];
}
