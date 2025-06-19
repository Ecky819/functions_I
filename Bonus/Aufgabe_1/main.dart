void convertMinutesToTime(int minutes) {
  int hours = minutes ~/ 60;
  int remainingMinutes = minutes % 60;
  String timeString = "$hours Stunden und $remainingMinutes Minuten";
  print(timeString);
}

void main() {
  convertMinutesToTime(90);
  convertMinutesToTime(120);
  convertMinutesToTime(145);
  convertMinutesToTime(150);
  convertMinutesToTime(130);
}
