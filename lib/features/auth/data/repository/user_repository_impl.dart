import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fake_shop/core/network/dio_exception.dart';
import 'package:flutter_fake_shop/core/network/failure.dart';
import 'package:flutter_fake_shop/features/auth/data/datasource/user_datasource.dart';
import 'package:flutter_fake_shop/features/auth/data/model/user_auth/user_auth_extension.dart';
import 'package:flutter_fake_shop/features/auth/domain/entity/user_auth_entity.dart';
import 'package:flutter_fake_shop/features/auth/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDatasource dataSource;

  UserRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, UserAuthEntity>> onLogin(
      String email, String password) async {
    try {
      final data = await dataSource.onLogin(email, password);
      return Right(data.toUserAuthEntity());
    } on DioException catch (e) {
      final String errorMessage = MyDioException.fromDioError(e).toString();

      if (kDebugMode) {
        print(errorMessage);
      }

      return Left<Failure, UserAuthEntity>(ServerFailure(
          statusCode: e.response?.statusCode, message: errorMessage));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }

      return Left<Failure, UserAuthEntity>(
          ServerFailure(message: e.toString()));
    }
  }
}
