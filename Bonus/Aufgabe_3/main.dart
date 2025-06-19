// Implementioere folgende Funktionen:
void findAndPrintExtreme(List<int> numbers) {
  // Diese Funktion findet die kleinste und größte Zahl in der Liste
  // Zeigt auch deren Position in der Liste
  if (numbers.isEmpty) {
    print("Die Liste ist leer.");
    return;
  }

  int kleinste = numbers[0];
  int groesste = numbers[0];
  int posKleinste = 0;
  int posGroesste = 0;

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < kleinste) {
      kleinste = numbers[i];
      posKleinste = i;
    }
    if (numbers[i] > groesste) {
      groesste = numbers[i];
      posGroesste = i;
    }
  }

  print("Kleinste Zahl: $kleinste an Position $posKleinste");
  print("Größte Zahl: $groesste an Position $posGroesste");
}

void printNumberTypes(List<int> numbers) {
  //Zählt und gibt aus:
  // - Wie viele gerade/ungerade Zahlen
  // - Wie vile positive/negative Zahlen
  int geradeZahlen = 0;
  int ungeradeZahlen = 0;
  int positiveZahlen = 0;
  int negativeZahlen = 0;
  int nullZahlen = 0;
  for (int number in numbers) {
    if (number % 2 == 0) {
      geradeZahlen++;
    } else {
      ungeradeZahlen++;
    }
    if (number > 0) {
      positiveZahlen++;
    } else if (number < 0) {
      negativeZahlen++;
    } else {
      nullZahlen++;
    }
  }

  print("Gerade Zahlen: $geradeZahlen");
  print("Ungerade Zahlen: $ungeradeZahlen");
  print("Positive Zahlen: $positiveZahlen");
  print("Negative Zahlen: $negativeZahlen");
  print("Null-Zahlen: $nullZahlen");
}

void printDistribution(List<int> numbers) {
  // Gibt die Verteilung der Zahlen in der Liste aus
  // z.B. "0: 2, 1: 3, 2: 1"
  Map<int, int> distribution = {};

  for (int number in numbers) {
    if (distribution.containsKey(number)) {
      distribution[number] = distribution[number]! + 1;
    } else {
      distribution[number] = 1;
    }
  }

  String result = distribution.entries
      .map((e) => "${e.key}: ${e.value}")
      .join(", ");
  print("Verteilung der Zahlen: $result");
}

//Hauptfunktion:
void analyzeNumbers(List<int> numbers) {
  // Ruft alle Funktionen der Reihe nach auf
  // Gibt eine übersichtliche Gesamtanalyse
  findAndPrintExtreme(numbers);
  printNumberTypes(numbers);
  printDistribution(numbers);
}

void main() {
  List<int> numbers = [3, 5, 5, 8, 0, -1, 4, 7, -3, -3, 2, 6, 8, 9, -2, -5];
  analyzeNumbers(numbers);
}
