part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable {}

class LoginInitial extends LoginState {
  @override
  List<Object?> get props => [];
}

class Logingin extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginSuccessful extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginFailed extends LoginState {
  final Exception error;
  LoginFailed({required this.error});
  @override
  List<Object?> get props => [];
}
