import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_fake_shop/features/auth/domain/usecase/user_login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserLoginUsecase userLoginUsecase;

  LoginBloc({
    required this.userLoginUsecase,
  }) : super(LoginInitialState()) {
    on<AuthenticationEvent>((event, emit) async {
      // TODO: User mockup (Fake shop API) for testing
      final response = await userLoginUsecase.call(const AuthParams(
        email: 'mor_2314',
        password: '83r5^_',
      ));

      response.fold(
        (failure) => emit(LoginFailedState()),
        (data) => emit(LoginSuccessState()),
      );
    });
  }
}
