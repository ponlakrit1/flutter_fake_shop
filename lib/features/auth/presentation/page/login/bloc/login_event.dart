part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationEvent extends LoginEvent {
  final String email;
  final String password;

  const AuthenticationEvent(this.email, this.password);
}
