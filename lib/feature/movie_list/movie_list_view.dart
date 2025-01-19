import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';
import 'package:movie_app/core/index.dart';
import 'package:movie_app/feature/movie_detail/movie_detail_view.dart';
import 'package:movie_app/product/data/notifier/movie_notifier.dart';
import 'package:movie_app/product/index.dart';

part 'movie_list_view_model.dart';

@immutable
final class MovieListView extends ConsumerStatefulWidget {
  const MovieListView({super.key});

  @override
  ConsumerState<MovieListView> createState() => _MovieListViewState();
}

class _MovieListViewState extends ConsumerState<MovieListView> with _MovieListViewModel {
  @override
  Widget build(BuildContext context) {
    final movies = ref.watch(movieNotifierProvider);

    return Scaffold(
      appBar: CustomAppBar(
        title: StringData().movieList,
      ),
      body: movies.when(
        data: (data) => _MovieListBody(_searchController, data, _goToDetail, _search),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (Object error, _) => Center(child: Text(error.toString())),
      ),
    );
  }
}

class _MovieListBody extends StatelessWidget {
  const _MovieListBody(this._searchController, this.movies, this.goToDetail, this._search);
  final TextEditingController _searchController;
  final List<MovieModel> movies;
  final void Function(MovieModel) goToDetail;
  final void Function() _search;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: SpaceValues.m.value,
        children: [
          Padding(
            padding: ProductPadding.eight(),
            child: Column(
              spacing: SpaceValues.s.value,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    StringData().search,
                    style: context.general.textTheme.titleMedium,
                  ),
                ),
                Row(
                  spacing: SpaceValues.s.value,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: _searchController,
                        prefixIcon: Icons.search,
                      ),
                    ),
                    CustomSearchButton(
                      onPressed: _search,
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (movies.isNotEmpty)
            Padding(
              padding: ProductPadding.ten(),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const CustomSliverGridDelegate.movieList(),
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return MovieCard(
                    onTap: () {
                      goToDetail(movies[index]);
                    },
                    imageUrl: movies[index].posterPath ?? '',
                    title: movies[index].title ?? '',
                  );
                },
              ),
            )
          else
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StringData().noData,
                  style: context.general.textTheme.displayMedium?.copyWith(
                    color: ProductColor().grey,
                  ),
                ),
                Icon(
                  Icons.movie_creation_outlined,
                  size: 100,
                  color: ProductColor().grey,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
