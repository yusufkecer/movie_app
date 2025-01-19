import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

@immutable
final class VerticalSpace extends SizedBox {
  ///[4px] vertical space
  VerticalSpace.xxs({super.key}) : super(height: SpaceValues.xxs.value);

  /// [8px] vertical space
  VerticalSpace.xs({super.key}) : super(height: SpaceValues.xs.value);

  /// [10px] vertical space
  VerticalSpace.s({super.key}) : super(height: SpaceValues.s.value);

  /// [12px] vertical space
  VerticalSpace.m({super.key}) : super(height: SpaceValues.m.value);

  /// [16px] vertical space
  VerticalSpace.l({super.key}) : super(height: SpaceValues.l.value);
}
