//Erstelle zwei Funktionen:
void printGrades(List<int> grades) {
  // Gibt alle Noten nacheinander aus
  // z.B. Note 1: 2, Note2: 1, Note3: 3
  for (int i = 0; i < grades.length; i++) {
    print("Note ${i + 1}: ${grades[i]}");
  }
}

void calculateAndPrintAverage(List<int> grades) {
  //Berechnet den Durchschnitt der Noten und gibt ihn aus:
  // "Der Durchschnitt der Noten ist: 2.5"
  double sum = 0;
  for (int grade in grades) {
    sum += grade;
  }
  double average = sum / grades.length;
  print("Der Durchschnitt der Noten ist: ${average.toStringAsFixed(2)}");
}

//Hauptfunktion
void analyzeGrades(List<int> grades) {
  printGrades(grades);
  calculateAndPrintAverage(grades);
}

void main() {
  List<int> grades = [2, 1, 3, 2, 4];
  analyzeGrades(grades);
}
