import 'package:flutter/material.dart';
import 'package:movie_app/product/index.dart';

@immutable
abstract final class InitApplication {
  static Future<void> initApplication() async {
    EnvManager.init(ProdEnv());
  }
}
