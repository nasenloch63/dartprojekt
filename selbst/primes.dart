import 'dart:io';

void main() {
  String? primeEingabe;
  int? PrimeZahl;
  print("Gib mir eine Zahl. Ich gebe dir alle Primzahlen bis zu dieser Zahl aus.");
  primeEingabe = stdin.readLineSync();
  PrimeZahl = int.tryParse(primeEingabe ??  ''); 
  while (PrimeZahl == null) {
    print("Fehler! Legitime Zahl eingeben.");

  }

}
