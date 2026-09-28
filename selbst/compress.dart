import 'dart:io';

void main() {
  String? eingabe;
  int anzahl = 1;
  print("Welchen String möchtest du komprimieren?");
  eingabe = stdin.readLineSync();
  for (int i = 0; i < eingabe!.length; i++) {
    print(eingabe[i]);

  if (eingabe[i] == eingabe[i+1] && eingabe[i] == eingabe[i + 1]) {
    anzahl++;
  }
  }
}