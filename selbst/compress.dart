import 'dart:io';

void main() {
  String? eingabe;
  print("Welchen String möchtest du komprimieren?");
  eingabe = stdin.readLineSync();
  for (int i = 0; i < eingabe!.length; i++) {
    print(eingabe[i]);
  }
}