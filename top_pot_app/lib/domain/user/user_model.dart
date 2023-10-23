import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  final String password;
  final String userEmail;

  const User(
      {required this.name, required this.password, required this.userEmail});

  @override
  List<Object?> get props => [name, password, userEmail];
}
