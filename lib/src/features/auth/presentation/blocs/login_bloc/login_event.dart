part of 'login_bloc.dart';

abstract class LoginEvent {}

class LoginInitialEvent extends LoginEvent {}

class LoginAttemptEvent extends LoginEvent {
  final String email;
  final String password;
  LoginAttemptEvent({required this.email, required this.password});
}
