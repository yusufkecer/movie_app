import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

@immutable
final class CustomCacheImage extends StatelessWidget {
  const CustomCacheImage({required this.imageUrl, this.height, this.width, super.key});
  final String imageUrl;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      alignment: Alignment.topCenter,
      height: height,
      width: width,
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
