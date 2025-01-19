part of '../movie_detail_view.dart';

class _IconWithText extends StatelessWidget {
  const _IconWithText({required this.icon, required this.text});

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: SpaceValues.s.value,
      children: [
        icon,
        Text(
          text,
          style: context.general.textTheme.titleMedium,
        ),
      ],
    );
  }
}
