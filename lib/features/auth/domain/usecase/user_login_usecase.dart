import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_fake_shop/core/network/failure.dart';
import 'package:flutter_fake_shop/core/usecase/usecase.dart';
import 'package:flutter_fake_shop/features/auth/domain/entity/user_auth_entity.dart';
import 'package:flutter_fake_shop/features/auth/domain/repository/user_repository.dart';

class UserLoginUsecase implements UseCase<UserAuthEntity, AuthParams> {
  final UserRepository repository;

  UserLoginUsecase(this.repository);

  @override
  Future<Either<Failure, UserAuthEntity>> call(AuthParams params) async {
    return await repository.onLogin(params.email, params.password);
  }
}

class AuthParams extends Equatable {
  final String email;
  final String password;

  const AuthParams({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}
