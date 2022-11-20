// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:top_pot_app/application/auth/signup/signup_bloc.dart';
import 'package:top_pot_app/infrustructure/auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AuthRepository authRepository}) : super(LoginInitial()) {
    on<LoginRequested>(_handleLoginRequested);
  }

  void _handleLoginRequested(LoginRequested event, Emitter emit) async {
    try {
      emit(Logingin());
      await Future.delayed(const Duration(seconds: 2));
      emit(LoginSuccessful());
    } on Exception catch (error) {
      emit(SignupFailed(error: error));
    }
  }
}
