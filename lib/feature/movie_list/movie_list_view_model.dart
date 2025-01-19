part of 'movie_list_view.dart';

mixin _MovieListViewModel on ConsumerState<MovieListView> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    _search();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _search() async {
    final searchWord = _searchController.text.isEmpty ? 'a' : _searchController.text;
    await ref.read(movieNotifierProvider.notifier).getMovies(searchWord);
  }

  void _goToDetail(MovieModel movie) {
    Navigator.of(context).push(
      MaterialPageRoute<MovieDetailView>(
        builder: (context) => MovieDetailView(movie: movie),
      ),
    );
  }
}
