import 'package:movie_app/core/index.dart';
import 'package:movie_app/product/data/repository/movie_repository.dart';
import 'package:movie_app/product/index.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'movie_notifier.g.dart';

@riverpod
class MovieNotifier extends _$MovieNotifier {
  final MovieRepository _movieRepository = MovieRepository();

  @override
  AsyncValue<List<MovieModel>> build() => const AsyncValue.loading();

  Future<void> getMovies(String search) async {
    'getting movies'.log;

    final data = await _movieRepository.getMovies(search);

    if (data.status == Status.success) {
      state = AsyncValue.data(data.data!);
      'Movies: $state'.log;
    } else {
      state = const AsyncValue.data([]);
    }
  }

  void clearMovies() {
    state = const AsyncValue.data([]);
  }
}
