part of 'cart_bloc.dart';

@immutable
abstract class CartEvent extends Equatable {}

class LoadCart extends CartEvent {
  final List<Coffee> coffees;
  LoadCart({this.coffees = const <Coffee>[]});

  @override
  List<Object?> get props => [coffees];
}

class AddToCart extends CartEvent {
  final Coffee coffee;
  AddToCart({required this.coffee});

  @override
  List<Object?> get props => [coffee];
}

class RemoveFromCart extends CartEvent {
  final Coffee coffee;
  RemoveFromCart({required this.coffee});

  @override
  List<Object?> get props => [coffee];
}

class UpdateCart extends CartEvent {
  final Coffee coffee;
  UpdateCart({required this.coffee});

  @override
  List<Object?> get props => [coffee];
}
