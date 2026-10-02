import 'dart:io';

void main() {
  String? primeEingabe;
  int? primeZahl;

  print("Gib mir eine Zahl. Ich gebe dir alle Primzahlen bis zu dieser Zahl aus.");
  primeEingabe = stdin.readLineSync();
  primeZahl = int.tryParse(primeEingabe ?? '');
  while (primeZahl == null) {
    print("Fehler! Legitime Zahl eingeben.");
    print("Gib mir eine Zahl. Ich gebe dir alle Primzahlen bis zu dieser Zahl aus.");
    primeEingabe = stdin.readLineSync();
  }
  primeZahl = int.tryParse(primeEingabe ?? '');
  for (int zahl = 2; zahl <= primeZahl!; zahl++) {
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

List<int> primeCalculation(int limit) {
  if (limit < 2) return [];
  if (limit == 2) return [2];

  final primes = [2];

  for (var i = 3; i < limit; i += 2) {
    var isPrime = true;
    for (var j = 0; primes[j] * primes[j] < i; j++) {
      if (i % primes[j] == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) primes.add(i);
  }

  return primes;
}
