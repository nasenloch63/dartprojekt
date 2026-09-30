import 'dart:io';

void main() {
  print("Welcher String soll dekomprimiert werden?");
  String eingabe = stdin.readLineSync() ?? "";

  String ergebnis = "";

  for (int i = 0; i < eingabe.length; i++) {
    String zeichen = eingabe[i];

    if (int.tryParse(zeichen) == null) {
      String zahlText = "";

      while (i + 1 < eingabe.length &&
          int.tryParse(eingabe[i + 1]) != null) {
        zahlText += eingabe[i + 1];
        i++;
      }

      if (zahlText.isEmpty) {
        ergebnis += zeichen;
      } else {
        int anzahl = int.parse(zahlText);

        for (int j = 0; j < anzahl; j++) {
          ergebnis += zeichen;
        }
      }
    }
  }

  print(ergebnis);
}