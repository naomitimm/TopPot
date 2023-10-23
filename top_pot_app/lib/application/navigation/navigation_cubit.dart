// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:top_pot_app/domain/models/coffee.dart';
import 'package:top_pot_app/domain/user/user_model.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());

  void toLoginScreen() => emit(LoginRoute());
  void toSignupScreen() => emit(SignupRoute());
  void toLandingScreen() => emit(LandingRoute());
  void toDashboardScreen(User user, [int tabIndex = 0]) =>
      emit(DashboardRoute(tabIndex: tabIndex, user: user));

  void toCoffeeDetailsPage(Coffee coffee) =>
      emit(CoffeeDetailsRoute(coffee: coffee));
}
