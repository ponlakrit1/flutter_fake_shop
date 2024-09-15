import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  String get fileName {
    if (kProfileMode) {
      return '.env.profile';
    }

    if (kReleaseMode) {
      return '.env.release';
    }

    return '.env.dev';
  }

  String get baseUrl => dotenv.env['BASE_URL'] ?? '';
}
