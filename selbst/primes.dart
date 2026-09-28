import 'dart:io';

void main() {
  String? primeEingabe;
  int? PrimeZahl;
  
  print("Gib mir eine Zahl. Ich gebe dir alle Primzahlen bis zu dieser Zahl aus.");
  primeEingabe = stdin.readLineSync();
  PrimeZahl = int.tryParse(primeEingabe ??  ''); 
  while (PrimeZahl == null) {
    print("Fehler! Legitime Zahl eingeben.");
     print("Gib mir eine Zahl. Ich gebe dir alle Primzahlen bis zu dieser Zahl aus.");
     primeEingabe = stdin.readLineSync();
  }
     PrimeZahl = int.tryParse(primeEingabe ??  '');
     for (int zahl = 2; zahl <= PrimeZahl!; zahl++) {
      bool istPrimzahl = true;
      for (int teiler = 2; teiler < zahl; teiler++) {
      if (zahl % teiler == 0) {
        istPrimzahl = false;
      }
      }
      if (istPrimzahl == true) {
        print(zahl);
      }
     }
  }
