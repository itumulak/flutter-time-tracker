String formattedDuration(int seconds) {
  final int hour = (seconds / 3600).floor();
  final int minute = ((seconds / 3600 - hour) * 60 ).floor();
  final int second = ((((seconds / 3600 - hour) * 60) - minute) * 60).floor();
  final String setTime = [
    hour.toString().padLeft(2, "0"),
    minute.toString().padLeft(2, "0"),
    second.toString().padLeft(2, '0'),
  ].join(':');

  return setTime;
}