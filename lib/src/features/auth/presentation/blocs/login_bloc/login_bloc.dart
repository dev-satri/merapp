import 'package:firebase_auth/firebase_auth.dart';
import 'package:meroapp/src/core/services/firebase/firebase_services.dart';
import 'package:meroapp/src/features/auth/data/enums/login_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final FirebaseServices _firebaseServices;
  LoginBloc(this._firebaseServices)
      : super(LoginState(loginEnum: LoginEnum.initial)) {
    on<LoginAttemptEvent>(
      (event, emit) async {
        emit(state.copyWith(loginEnum: LoginEnum.loading));
        final User? user = await _firebaseServices.login(
            email: event.email, password: event.password);
        if (user != null) {
          emit(
            state.copyWith(
              loginEnum: LoginEnum.success,
              user: user,
            ),
          );
        } else {
          emit(state.copyWith(loginEnum: LoginEnum.failure));
        }
      },
    );
  }
}
