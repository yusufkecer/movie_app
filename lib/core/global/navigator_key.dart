import 'package:flutter/material.dart';

@immutable
final class NavigatorKey {
  NavigatorKey._privateConstructor();

  static final NavigatorKey _instance = NavigatorKey._privateConstructor();

  static NavigatorKey get instance => _instance;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

extension NavigatorKeyExtension on BuildContext {
  BuildContext? get navigatorKey => NavigatorKey.instance.navigatorKey.currentContext;
}
