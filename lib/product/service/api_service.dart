import 'package:http/http.dart' as http;
import 'package:movie_app/core/index.dart';
import 'package:movie_app/product/index.dart';

final class ApiService implements BaseApiService<ResponseModel<String>> {
  final String _baseUrl = EnvManager.baseUrl;
  final String _apiKey = EnvManager.apiKey;

  @override
  Future<ResponseModel<String>> get({String? query}) async {
    try {
      final api = '$_baseUrl?api_key=$_apiKey&$query';

      final response = await http.get(Uri.parse(api));

      if (response.statusCode != 200) {
        'Response--> $response'.log;
        return ResponseModel.error('Error');
      }

      return ResponseModel.success(data: response.body);
    } on Exception catch (e) {
      'Decoding error: $e'.log;
      return ResponseModel.error('Decoding error');
    }
  }

  @override
  Future<ResponseModel<String>> post(String url, {Json? body}) {
    throw UnimplementedError();
  }
}
