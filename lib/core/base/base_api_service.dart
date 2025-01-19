import 'package:movie_app/product/index.dart';

///[T] is the return type of the get method
abstract interface class BaseApiService<T> {
  Future<T> get({String? query});
  Future<T> post(String url, {Json? body});
}
