import 'package:flutter/material.dart';

@immutable
final class CustomSliverGridDelegate extends SliverGridDelegateWithFixedCrossAxisCount {
  const CustomSliverGridDelegate.movieList()
      : super(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 0.7,
        );
}
