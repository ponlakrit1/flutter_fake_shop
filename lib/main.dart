import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_fake_shop/core/di/injector.dart';
import 'package:flutter_fake_shop/core/env/environment.dart';
import 'package:flutter_fake_shop/core/theme/app_theme.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  await dotenv.load(fileName: injector<Environment>().fileName);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.defaultTheme,
      routerConfig: injector<GoRouter>(),
    );
  }
}
