import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';
import 'package:movie_app/core/enum/index.dart';
import 'package:movie_app/core/extension/index.dart';
import 'package:movie_app/product/index.dart';

part './widget/back_drop.dart';
part './widget/icon_with_text.dart';

@immutable
final class MovieDetailView extends ConsumerWidget {
  const MovieDetailView({
    required this.movie,
    super.key,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: StringData().movieDetail,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: SpaceValues.s.value,
          children: [
            _BackDrop(movie.backdropPath ?? '', movie.posterPath ?? ''),
            Padding(
              padding: ProductPadding.fifTeen().copyWith(top: 0),
              child: Column(
                spacing: SpaceValues.s.value,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.originalTitle ?? '',
                    style: context.general.textTheme.titleMedium,
                    textAlign: TextAlign.left,
                  ),
                  Row(
                    spacing: SpaceValues.s.value,
                    children: [
                      _IconWithText(
                        icon: const Icon(Icons.date_range),
                        text: movie.releaseDate?.dateMY ?? '-',
                      ),
                      _IconWithText(
                        icon: const Icon(Icons.star),
                        text: movie.voteAverage.toString(),
                      ),
                      _IconWithText(
                        icon: const Icon(Icons.local_fire_department),
                        text: movie.popularity.toString(),
                      ),
                    ],
                  ),
                  Text(
                    StringData().overview,
                    style: context.general.textTheme.titleMedium,
                  ),
                  Text(
                    movie.overview ?? '',
                    style: context.general.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
