part of 'register_bloc.dart';

class RegisterState {
  RegisterEnum registerEnum;
  RegisterState({required this.registerEnum});

  copyWith({RegisterEnum? registerEnum}) {
    return RegisterState(
      registerEnum: registerEnum ?? this.registerEnum,
    );
  }
}
