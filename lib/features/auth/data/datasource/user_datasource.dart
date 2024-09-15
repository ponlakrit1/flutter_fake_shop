import 'package:dio/dio.dart';
import 'package:flutter_fake_shop/core/network/failure.dart';
import 'package:flutter_fake_shop/features/auth/data/model/user_auth/user_auth_model.dart';

abstract class UserDatasource {
  Future<UserAuthModel> onLogin(String email, String password);
}

class UserDatasourceImpl implements UserDatasource {
  final Dio netWorkLocator;

  UserDatasourceImpl({required this.netWorkLocator});

  @override
  Future<UserAuthModel> onLogin(String email, String password) async {
    final response = await netWorkLocator.post(
      '/auth/login',
      data: {
        'username': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      return UserAuthModel.fromJson(response.data);
    } else {
      throw ServerFailure();
    }
  }
}
