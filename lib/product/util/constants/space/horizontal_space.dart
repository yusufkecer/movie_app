import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';

@immutable
final class HorizontalSpace extends SizedBox {
  ///[4px] horizontal space
  HorizontalSpace.xxs({super.key}) : super(width: SpaceValues.xxs.value);

  ///[8px] horizontal space
  HorizontalSpace.xs({super.key}) : super(width: SpaceValues.xs.value);

  ///[10px] horizontal space
  HorizontalSpace.s({super.key}) : super(width: SpaceValues.s.value);

  ///[12px] horizontal space
  HorizontalSpace.m({super.key}) : super(width: SpaceValues.m.value);

  ///[16px] horizontal space
  HorizontalSpace.l({super.key}) : super(width: SpaceValues.l.value);

  ///[20px] horizontal space
  HorizontalSpace.xl({super.key}) : super(width: SpaceValues.xl.value);
}
