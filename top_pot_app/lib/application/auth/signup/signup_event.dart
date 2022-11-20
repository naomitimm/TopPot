part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent extends Equatable {}

class SignupRequested extends SignupEvent {
  @override
  List<Object?> get props => [];
}
