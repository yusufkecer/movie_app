import 'package:movie_app/core/index.dart';

final class EnvManager {
  EnvManager.init(BaseEnv env) {
    _env = env;
  }

  static late BaseEnv _env;

  static String get baseUrl => _env.baseUrl;

  static String get apiKey => _env.apiKey;

  static String get baseImageUrl => _env.baseImageUrl;
}
