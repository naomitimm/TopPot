part of 'user_bloc.dart';

@immutable
abstract class UserState extends Equatable {}

class UserInitial extends UserState {
  @override
  List<Object?> get props => [];
}

class UserUpdating extends UserState {
  @override
  List<Object?> get props => [];
}

class UserNameUpdated extends UserState {
  final String userName;
  UserNameUpdated({required this.userName});
  @override
  List<Object?> get props => [];
}

class UserHandleUpdated extends UserState {
  final String userHandle;
  UserHandleUpdated({required this.userHandle});
  @override
  List<Object?> get props => [];
}

class UserBioUpdated extends UserState {
  final String userBio;
  UserBioUpdated({required this.userBio});
  @override
  List<Object?> get props => [];
}

class UserCityUpdated extends UserState {
  final String userCity;
  UserCityUpdated({required this.userCity});
  @override
  List<Object?> get props => [];
}

class UserUpdateFailed extends UserState {
  final Exception error;
  UserUpdateFailed({required this.error});
  @override
  List<Object?> get props => [error];
}
