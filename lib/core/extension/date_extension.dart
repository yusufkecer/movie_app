extension DateMYExtension on String {
  String get dateMY {
    try {
      final date = DateTime.parse(this);
      return '${date.month}/${date.year}';
    } on Exception {
      return '';
    }
  }
}
