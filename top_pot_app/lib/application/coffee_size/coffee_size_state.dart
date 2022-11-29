part of 'coffee_size_bloc.dart';

@immutable
abstract class CoffeeSizeState extends Equatable {}

class CoffeeSizeInitial extends CoffeeSizeState {
  @override
  List<Object?> get props => [];
}

class SelectingCoffeeSize extends CoffeeSizeState {
  @override
  List<Object?> get props => [];
}

class SmallCoffeeSelected extends CoffeeSizeState {
  @override
  List<Object?> get props => [];
}

class MediumCoffeeSelected extends CoffeeSizeState {
  @override
  List<Object?> get props => [];
}

class LargeCoffeeSelected extends CoffeeSizeState {
  @override
  List<Object?> get props => [];
}

class SelectingCoffeeFailed extends CoffeeSizeState {
  final Exception error;
  SelectingCoffeeFailed({required this.error});
  @override
  List<Object?> get props => [error];
}
