import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

@immutable
final class ProductPadding extends EdgeInsets {
  ProductPadding.four() : super.all(SpaceValues.xxs.value);
  ProductPadding.eight() : super.all(SpaceValues.xs.value);
  ProductPadding.ten() : super.all(SpaceValues.s.value);

  ProductPadding.fifTeen() : super.all(SpaceValues.m.value);
}
