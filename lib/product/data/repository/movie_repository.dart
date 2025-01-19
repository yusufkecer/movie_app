import 'dart:convert';
import 'package:movie_app/product/index.dart';
import 'package:movie_app/product/service/api_service.dart';

final class MovieRepository {
  List<MovieModel> _movies = [];
  List<MovieModel> get movies => _movies;

  final _apiService = ApiService();

  Future<ResponseModel<List<MovieModel>>> getMovies(String search) async {
    final query = 'query=$search';

    final data = await _apiService.get(query: query);

    if (data.status == Status.success) {
      final parseData = jsonDecode(data.data!) as Json;
      final movieList = parseData['results'] as List<dynamic>;

      final movies = movieList.map((dynamic item) => MovieModel.fromJson(item as Map<String, dynamic>)).toList();

      changeImages(movies);

      return ResponseModel.success(data: movies);
    } else {
      return ResponseModel.error('Error');
    }
  }

  void changeImages(List<MovieModel> movies) {
    final imageUrl = EnvManager.baseImageUrl;

    for (var i = 0; i < movies.length; i++) {
      final posterFullUrl = '$imageUrl${movies[i].posterPath}';
      final backdropFullUrl = '$imageUrl${movies[i].backdropPath}';

      movies[i] = movies[i].copyWith(
        posterPath: posterFullUrl,
        backdropPath: backdropFullUrl,
      );
    }

    _movies = movies;
  }
}
