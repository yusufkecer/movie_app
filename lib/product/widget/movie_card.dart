import 'package:flutter/material.dart';
import 'package:movie_app/product/util/index.dart';
import 'package:movie_app/product/widget/index.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    required this.imageUrl,
    required this.title,
    required this.onTap,
    super.key,
  });

  final String imageUrl;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: Stack(
            fit: StackFit.expand,
            children: [
              CustomCacheImage(
                imageUrl: imageUrl,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: ColoredBox(
                    color: ProductColor().darkOcean.withAlpha(180),
                    child: Padding(
                      padding: ProductPadding.eight(),
                      child: Text(title),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
