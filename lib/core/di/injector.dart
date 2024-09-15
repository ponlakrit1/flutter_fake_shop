import 'package:dio/dio.dart';
import 'package:flutter_fake_shop/core/env/environment.dart';
import 'package:flutter_fake_shop/core/network/dio_factory.dart';
import 'package:flutter_fake_shop/core/routes/routes.dart';
import 'package:flutter_fake_shop/features/auth/data/datasource/user_datasource.dart';
import 'package:flutter_fake_shop/features/auth/data/repository/user_repository_impl.dart';
import 'package:flutter_fake_shop/features/auth/domain/repository/user_repository.dart';
import 'package:flutter_fake_shop/features/auth/domain/usecase/user_login_usecase.dart';
import 'package:flutter_fake_shop/features/auth/presentation/page/login/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt injector = GetIt.instance;

Future<void> initializeDependencies() async {
  //! Bloc
  injector.registerFactory(
    () => LoginBloc(),
  );

  // Use cases
  injector.registerLazySingleton(() => UserLoginUsecase(injector()));

  //! Repository
  injector.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(
      dataSource: injector(),
    ),
  );

  //! Data sources
  injector.registerLazySingleton<UserDatasource>(
    () => UserDatasourceImpl(netWorkLocator: injector()),
  );

  //! Core
  Environment env = Environment();
  injector.registerLazySingleton<Environment>(() => env);
  injector.registerLazySingleton<Dio>(() => DioFactory(env.baseUrl).create());
  injector.registerLazySingleton(() => router);
}
