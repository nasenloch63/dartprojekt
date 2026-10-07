import 'dart:io';

void main() {
  final eingabe = getEingabe();
  final ergebnis = decompress(eingabe);
  print(ergebnis);
}

String getEingabe() {
  print("Welcher String soll dekomprimiert werden?");
  var eingabe = stdin.readLineSync() ?? "";
  return eingabe;
}
String decompress(String s) {
  var ergebnis = "";

  for (var i = 0; i < s.length; i++) {
    final zeichen = s[i];

    if (int.tryParse(zeichen) == null) {
      var zahlText = "";

      while (i + 1 < s.length && int.tryParse(s[i + 1]) != null) {
        zahlText += s[i + 1];
        i++;
      }

      if (zahlText.isEmpty) {
        ergebnis += zeichen;
      } else {
        final anzahl = int.parse(zahlText);

        ergebnis += zeichen * anzahl;
      }
    }
  } return ergebnis;
}
