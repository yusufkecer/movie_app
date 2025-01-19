import 'package:envied/envied.dart';
import 'package:movie_app/core/index.dart';

part 'env.g.dart';

@Envied(obfuscate: true, path: 'assets/env/.prod.env')
final class ProdEnv implements BaseEnv {
  @EnviedField(varName: 'BASE_URL')
  final String _baseUrl = _ProdEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  final String _apiKey = _ProdEnv._apiKey;

  @EnviedField(varName: 'BASE_IMAGE_URL')
  final String _baseImageUrl = _ProdEnv._baseImageUrl;

  @override
  String get baseUrl => _baseUrl;
  @override
  String get apiKey => _apiKey;
  @override
  String get baseImageUrl => _baseImageUrl;
}
