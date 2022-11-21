part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {}

class LoginRequested extends LoginEvent {
  final String email;
  final String password;
  LoginRequested({required this.email, required this.password});
  @override
  List<Object?> get props => [email, password];
}
