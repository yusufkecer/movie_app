import 'package:flutter/material.dart';
import 'package:movie_app/product/index.dart';

@immutable
final class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.focusNode,
    this.hintText,
    super.key,
    this.controller,
    this.prefixIcon,
    this.onTap,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function()? onTap;
  final IconData? prefixIcon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    final node = focusNode ?? FocusNode();
    return Container(
      decoration: _ProductDecoration.inputDecoration(),
      child: TextFormField(
        onTapOutside: (_) => FocusScope.of(context).requestFocus(node),
        controller: controller,
        onTap: onTap,
        decoration: InputDecoration(
          contentPadding: ProductPadding.fifTeen(),
          border: InputBorder.none,
          prefixIcon: Icon(prefixIcon),
        ),
      ),
    );
  }
}

@immutable
final class _ProductDecoration extends BoxDecoration {
  _ProductDecoration.inputDecoration()
      : super(
          boxShadow: [
            BoxShadow(
              color: ProductColor().lightOcean,
            ),
          ],
          border: Border.all(color: ProductColor().lightOcean),
          borderRadius: ProductRadius.ten(),
        );
}
