part of '../movie_detail_view.dart';

class _BackDrop extends StatelessWidget {
  const _BackDrop(this.backDrop, this.poster);
  final String backDrop;
  final String poster;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.general.mediaSize.height * 0.4,
      child: Stack(
        children: [
          CustomCacheImage(
            imageUrl: backDrop,
            height: context.general.mediaSize.height * 0.3,
            width: double.infinity,
          ),
          Padding(
            padding: ProductPadding.fifTeen(),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: CustomCacheImage(
                imageUrl: poster,
                height: context.general.mediaSize.height * 0.2,
                width: context.general.mediaSize.width * 0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
