import 'package:dartz/dartz.dart';
import 'package:flutter_fake_shop/core/network/failure.dart';
import 'package:flutter_fake_shop/features/auth/domain/entity/user_auth_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserAuthEntity>> onLogin(
    String email,
    String password,
  );
}
