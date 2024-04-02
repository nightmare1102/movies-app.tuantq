extension StringExt on String {
  String toFormatDuration() {
    if (isEmpty) return 'N/A';
    String cleanedString = replaceAll("PT", "");
    int minutes = int.parse(cleanedString.replaceAll("M", ""));
    int hours = minutes ~/ 60;
    minutes = minutes % 60;
    if (hours == 0) return '${minutes}m';
    return '${hours}h ${minutes}m';
  }

  String toSpecial() {
    return isNotEmpty ? '$this ๏ ' : "";
  }

  String toIMDbString() {
    if (isEmpty || contains("N/A")) return "N/A";
    return "$this/10";
  }
}

extension StringsExt<T> on List<dynamic> {
  String toRating() {
    int sum = reduce((value, element) => (value as int) + (element as int));
    double average = sum / length;
    return average.toStringAsFixed(1);
  }

  String toListString() {
    return map((e) => e.toString()).toString().replaceAll("(", "").replaceAll(")", "");
  }
}
