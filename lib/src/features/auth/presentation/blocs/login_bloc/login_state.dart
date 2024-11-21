part of 'login_bloc.dart';

class LoginState {
  LoginEnum loginEnum;
  User? user;
  LoginState({required this.loginEnum, this.user});

  copyWith({LoginEnum? loginEnum, User? user}) {
    return LoginState(
      loginEnum: loginEnum ?? this.loginEnum,
      user: user ?? this.user,
    );
  }
}
