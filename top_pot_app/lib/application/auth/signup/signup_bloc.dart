// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:top_pot_app/infrustructure/auth_repository.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthRepository authRepository;
  SignupBloc({required this.authRepository}) : super(SignupInitial()) {
    on<SignupRequested>(_handleSignupRequest);
  }

  void _handleSignupRequest(SignupRequested event, Emitter emit) async {
    try {
      emit(SigningUp());
      await Future.delayed(const Duration(seconds: 2));
      emit(SignupSuccessful());
    } on Exception catch (error) {
      emit(SignupFailed(error: error));
      return;
    }
  }
}
