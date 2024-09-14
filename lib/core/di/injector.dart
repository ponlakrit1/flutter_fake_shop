import 'package:flutter_fake_shop/core/env/environment.dart';
import 'package:flutter_fake_shop/core/routes/routes.dart';
import 'package:flutter_fake_shop/features/auth/presentation/page/login/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt injector = GetIt.instance;

Future<void> initializeDependencies() async {
  //! Bloc
  injector.registerFactory(
    () => LoginBloc(),
  );

  //! Core
  injector.registerLazySingleton<Environment>(() => Environment());
  injector.registerLazySingleton(() => router);
}
