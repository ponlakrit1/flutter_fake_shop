part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailed extends LoginState {}

class LoginFailedValidateEmail extends LoginState {
  final String emailErrorMsg;

  const LoginFailedValidateEmail({
    required this.emailErrorMsg,
  });

  @override
  List<Object> get props => [emailErrorMsg];
}

class LoginFailedValidatePassword extends LoginState {
  final String passwordErrorMsg;

  const LoginFailedValidatePassword({
    required this.passwordErrorMsg,
  });

  @override
  List<Object> get props => [passwordErrorMsg];
}
