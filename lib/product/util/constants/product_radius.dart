import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

@immutable
final class ProductRadius extends BorderRadius {
  ProductRadius.ten()
      : super.all(
          Radius.circular(SpaceValues.s.value),
        );
  ProductRadius.fifteen()
      : super.all(
          Radius.circular(SpaceValues.m.value),
        );
  ProductRadius.twentyFive()
      : super.all(
          Radius.circular(SpaceValues.xl.value),
        );
}
