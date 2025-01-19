import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:movie_app/product/index.dart';

@immutable
final class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({required this.onPressed, super.key});
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: context.general.mediaQuery.size.height * 0.07,
      height: context.general.mediaQuery.size.height * 0.07,
      decoration: BoxDecoration(
        color: ProductColor().lightOcean,
        borderRadius: ProductRadius.ten(),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Icon(
          Icons.search,
          color: ProductColor().lightGrey,
        ),
      ),
    );
  }
}
