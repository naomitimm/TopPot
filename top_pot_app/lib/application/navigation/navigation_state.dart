part of 'navigation_cubit.dart';

@immutable
abstract class NavigationState {}

class NavigationInitial extends NavigationState {}

class LandingRoute extends NavigationState {}

class LoginRoute extends NavigationState {}

class SignupRoute extends NavigationState {}

class DashboardRoute extends NavigationState {
  final int tabIndex;

  DashboardRoute({
    required this.tabIndex,
  });
}

class CoffeeDetailsRoute extends NavigationState {
  final Coffee coffee;
  CoffeeDetailsRoute({required this.coffee});
}
