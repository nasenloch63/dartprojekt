import 'dart:io';

void main() {
  String? vorname;
  String? nachname;
  int? age;
  String? sex;

  print("Vorname, Nachname, Alter, M/F?");
  vorname = stdin.readLineSync();
  while (vorname == null || vorname.isEmpty) {
  print("Fehler! Bitte Vorname erneut eingeben: Max, Mustermann, 21, M");
  vorname = stdin.readLineSync(); 
  }

  print("Vorname, Nachname, Alter, M/F?");
  nachname = stdin.readLineSync();
  while (nachname == null || nachname.isEmpty) {
  print("Fehler! Bitte Vorname erneut eingeben: Max, Mustermann, 21, M");
  nachname = stdin.readLineSync(); 
  }

  print("Vorname, Nachname, Alter, M/F?");
  age = int.tryParse();
  while (age == null) {
  print("Fehler! Bitte Vorname erneut eingeben: Max, Mustermann, 21, M");
  age = int.tryParse(); 
  }



  print("Ich grüße dich $vorname!");
}
