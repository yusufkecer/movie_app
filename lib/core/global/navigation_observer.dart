import 'package:flutter/material.dart';

@immutable
final class NavigationObserver extends NavigatorObserver {
  factory NavigationObserver() => instance;

  NavigationObserver._();

  static final NavigationObserver instance = NavigationObserver._();
}
