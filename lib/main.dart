import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/index.dart';
import 'package:movie_app/feature/movie_list/movie_list_view.dart';

void main() {
  InitApplication.initApplication();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: CustomTheme().theme,
      navigatorKey: NavigatorKey.instance.navigatorKey,
      navigatorObservers: [NavigationObserver()],
      home: const MovieListView(),
    );
  }
}
