void reverseInitials(String vorname, String nachname) {
  String lastLetterVorname = vorname.isNotEmpty
      ? vorname.substring(vorname.length - 1).toUpperCase()
      : '';
  String lastLetterNachname = nachname.isNotEmpty
      ? nachname.substring(nachname.length - 1).toUpperCase()
      : '';
  print("$lastLetterVorname. $lastLetterNachname.");
}

void main() {
  reverseInitials("Konrad", "Adenauer");
  reverseInitials("Helmut", "Kohl");
  reverseInitials("Gerhard", "Schröder");
  reverseInitials("Angela", "Merkel");
  reverseInitials("Olaf", "Scholz");
  reverseInitials("Friedrich", "Merz");
}
