import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userName;
  final String userHandle;
  final String userEmail;

  const User(
      {required this.userName,
      required this.userHandle,
      required this.userEmail});

  @override
  List<Object?> get props => [userName, userHandle, userEmail];
}
