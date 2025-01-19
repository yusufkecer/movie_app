import 'package:flutter/material.dart';
import 'package:movie_app/core/index.dart';
import 'package:movie_app/product/util/constants/product_color.dart';
import 'package:movie_app/product/util/constants/product_padding.dart';
part 'app_bar_leading.dart';

@immutable
final class CustomAppBar extends PreferredSize {
  CustomAppBar({
    required this.title,
    this.leading,
    this.actions,
    super.key,
  }) : super(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            backgroundColor: ProductColor().transparent,
            title: Text(
              title,
            ),
            actions: actions,
            leading: NavigationObserver.instance.navigator!.canPop() ? (leading ?? const _AppBarLeading()) : null,
          ),
        );

  final String title;
  final List<Widget>? actions;
  final Widget? leading;
}
