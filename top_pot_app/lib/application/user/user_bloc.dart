// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:top_pot_app/domain/user/user_model.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<UpdateUserHandle>(_handleUserHandleUpdate);
    on<UpdateUserName>(_handleUserNameUpdate);
    on<UpdateUserEmail>(_handleUserBioUpdate);
  }
  void _handleUserHandleUpdate(UpdateUserHandle event, Emitter emit) {
    try {
      emit(UserUpdating());
      final userhandle = event.user.userHandle;
      emit(UserHandleUpdated(userHandle: userhandle));
    } on Exception catch (error) {
      emit(UserUpdateFailed(error: error));
    }
  }

  void _handleUserNameUpdate(UpdateUserName event, Emitter emit) {
    try {
      emit(UserUpdating());
      final userName = event.user.userName;
      emit(UserNameUpdated(userName: userName));
    } on Exception catch (error) {
      emit(UserUpdateFailed(error: error));
    }
  }

  void _handleUserBioUpdate(UpdateUserEmail event, Emitter emit) {
    try {
      emit(UserUpdating());
      final userBio = event.user.userEmail;
      emit(UserBioUpdated(userBio: userBio));
    } on Exception catch (error) {
      emit(UserUpdateFailed(error: error));
    }
  }
}
