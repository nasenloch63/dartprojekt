import 'dart:io';

void main() {
  String? vorname;
  
  print("Vorname?");
  vorname = stdin.readLineSync();

  while (vorname == null || vorname.isEmpty) {
  print("Fehler!"); 
  }
  print("Ich grüße dich $vorname!");
}
