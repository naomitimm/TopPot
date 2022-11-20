part of 'signup_bloc.dart';

@immutable
abstract class SignupState extends Equatable {}

class SignupInitial extends SignupState {
  @override
  List<Object?> get props => [];
}

class SigningUp extends SignupState {
  @override
  List<Object?> get props => [];
}

class SignupSuccessful extends SignupState {
  @override
  List<Object?> get props => [];
}

class SignupFailed extends SignupState {
  final Exception error;
  SignupFailed({required this.error});
  @override
  List<Object?> get props => [];
}
