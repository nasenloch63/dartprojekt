import 'dart:io';

void main() {
  print("Welcher String soll dekomprimiert werden?");
  String eingabe = stdin.readLineSync() ?? "";

  var ergebnis = "";

  for (var i = 0; i < eingabe.length; i++) {
    final zeichen = eingabe[i];

    if (int.tryParse(zeichen) == null) {
      var zahlText = "";

      while (i + 1 < eingabe.length && int.tryParse(eingabe[i + 1]) != null) {
        zahlText += eingabe[i + 1];
        i++;
      }

      if (zahlText.isEmpty) {
        ergebnis += zeichen;
      } else {
        final anzahl = int.parse(zahlText);

        ergebnis += zeichen * anzahl;
      }
    }
  }

  print(ergebnis);
}
