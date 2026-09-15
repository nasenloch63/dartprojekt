import 'dart:io';

void main() {
  String? vorname;
  String? nachname;
  String? alterEingabe;
  int? age;
  String? sex;

// abfrage nach Vorname
  print("Vorname, Nachname, Alter, M/F?");
  vorname = stdin.readLineSync();
  while (vorname == null || vorname.isEmpty) {
  print("Fehler! Bitte Vorname erneut eingeben: Max, Mustermann, 21, M");
  vorname = stdin.readLineSync(); 
  }
// abfrage nach Nachname
  print("Vorname, Nachname, Alter, M/F?");
  nachname = stdin.readLineSync();
  while (nachname == null || nachname.isEmpty) {
  print("Fehler! Bitte Vorname erneut eingeben: Max, Mustermann, 21, M");
  nachname = stdin.readLineSync(); 
  }
// abfrage nach Alter
  
  if (alterEingabe != null) {
    age = int.tryParse(alterEingabe);
  }
  print("Vorname, Nachname, Alter, M/F?");
  while (alterEingabe == null || alterEingabe.isEmpty) {
  print("Fehler! Bitte Vorname erneut eingeben: Max, Mustermann, 21, M");
  age = int.tryParse(alterEingabe ?? '');
  }

//ausgabe greeter mit Vor Nachname Alter und Age
  print("Ich grüße dich $vorname!");
}
