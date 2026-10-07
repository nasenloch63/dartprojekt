import 'dart:io';

import 'greeter.dart';

void main() {
  final eingabe = getEingabe();
  final ergebnis = compress(eingabe);
  print("Welchen String möchtest du komprimieren?");
  final eingabe = stdin.readLineSync() ?? "";
  print(ergebnis);
}


String compress(String s) {
  var ergebnis = "";
  var anzahl = 1;
  for (var i = 0; i < s.length - 1; i++) {
    if (s[i] == s[i + 1]) {
      anzahl++;
    } else {
      if (anzahl >= 3) {
        ergebnis += "${s[i]}$anzahl";
      } else {
        for (int j = 0; j < anzahl; j++) {
          ergebnis += "${s[i]}";
        }
      }
      anzahl = 1;
    }
  }
  return ergebnis;
}
