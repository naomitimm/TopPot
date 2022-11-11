part of 'cart_bloc.dart';

@immutable
abstract class CartState extends Equatable {}

class CartLoading extends CartState {
  @override
  List<Object?> get props => [];
}

class CartLoadingSuccessful extends CartState {
  final List<Coffee> coffees;
  CartLoadingSuccessful({this.coffees = const <Coffee>[]});

  @override
  List<Object?> get props => [coffees];
}

class CartLoadingFailed extends CartState {
  final Exception error;
  CartLoadingFailed({required this.error});

  @override
  List<Object?> get props => [error];
}

class AddedToCart extends CartState {
  @override
  List<Object?> get props => [];
}

class RemovedFromCart extends CartState {
  @override
  List<Object?> get props => [];
}

class UpdatedCart extends CartState {
  @override
  List<Object?> get props => [];
}
