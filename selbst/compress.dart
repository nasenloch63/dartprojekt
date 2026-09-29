import 'dart:io';

void main() {
  String? eingabe;
  int anzahl = 1;
  String? ergebnis = "";
  print("Welchen String möchtest du komprimieren?");
  eingabe = stdin.readLineSync();
  for (int i = 0; i < eingabe!.length; i++) {
  if (i + 1 < eingabe.length && eingabe[i] == eingabe[i + 1]) {
    anzahl++;
  }
  else {
    if (anzahl >= 3) {
      ergebnis += "${eingabe[i]}$anzahl";
    }
    else {
      for (int j = 0; j < anzahl; j++) {
        ergebnis += "${eingabe[i]}";
      }
    }
     anzahl = 1;
  }
  }
}