part of 'custom_app_bar.dart';

@immutable
final class _AppBarLeading extends StatelessWidget {
  const _AppBarLeading();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: ProductPadding.ten(),
      decoration: BoxDecoration(
        color: ProductColor().lightGrey.withAlpha(100),
        shape: BoxShape.circle,
      ),
      child: Align(
        child: IconButton(
          alignment: Alignment.center,
          icon: const Icon(Icons.arrow_back_ios_rounded, size: 20),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
