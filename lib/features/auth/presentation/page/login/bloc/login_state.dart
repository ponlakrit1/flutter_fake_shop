part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitialState extends LoginState {}

class LoginSuccessState extends LoginState {}

class LoginFailedState extends LoginState {}

class LoginFailedValidateEmailState extends LoginState {
  final String emailErrorMsg;

  const LoginFailedValidateEmailState({
    required this.emailErrorMsg,
  });

  @override
  List<Object> get props => [emailErrorMsg];
}

class LoginFailedValidatePasswordState extends LoginState {
  final String passwordErrorMsg;

  const LoginFailedValidatePasswordState({
    required this.passwordErrorMsg,
  });

  @override
  List<Object> get props => [passwordErrorMsg];
}
