import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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

  void _handleAddToCart(AddToCart event, Emitter emit) {}
  void _handleRemoveFromCart(RemoveFromCart event, Emitter emit) {}
  void _handleUpdateCart(UpdateCart event, Emitter emit) {}
}
