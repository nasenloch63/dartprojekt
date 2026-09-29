import 'dart:io';

void main() {
  String? eingabe;
  int anzahl = 1;
  print("Welchen String möchtest du komprimieren?");
  eingabe = stdin.readLineSync();
  for (int i = 0; i < eingabe!.length; i++) {
    print(eingabe[i]);

  if (i + 1 < eingabe.length && eingabe[i] == eingabe[i + 1]) {
    anzahl++;
  }
  else {
    if (anzahl >= 3) {
      print(eingabe);
    }
  }

  }
}