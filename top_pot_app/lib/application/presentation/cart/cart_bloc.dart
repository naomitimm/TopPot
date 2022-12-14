// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:top_pot_app/domain/models/coffee.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading()) {
    on<LoadCart>(_handleLoadCart);
    on<AddToCart>(_handleAddToCart);
    on<RemoveFromCart>(_handleRemoveFromCart);
    on<UpdateCart>(_handleUpdateCart);
  }

  void _handleLoadCart(LoadCart event, Emitter emit) async {
    await Future.delayed(const Duration(seconds: 2));
    try {
      emit(CartLoadingSuccessful(coffees: event.coffees));
    } on Exception catch (error) {
      emit(CartLoadingFailed(error: error));
    }
  }

  void _handleAddToCart(AddToCart event, Emitter emit) {
    final state = this.state;
    if (state is CartLoadingSuccessful) {
      emit(CartLoadingSuccessful(
          coffees: List.from(state.coffees)..add(event.coffee)));
    }
  }

  void _handleRemoveFromCart(RemoveFromCart event, Emitter emit) {
    final state = this.state;
    if (state is CartLoadingSuccessful) {
      final List<Coffee> coffees = state.coffees.where((coffee) {
        return coffee.name != event.coffee.name;
      }).toList();
      emit(CartLoadingSuccessful(coffees: coffees));
    }
  }

  void _handleUpdateCart(UpdateCart event, Emitter emit) {}
}
