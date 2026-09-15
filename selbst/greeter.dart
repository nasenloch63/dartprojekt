import 'dart:io';

enum Geschlecht {
  M,
  F
}
void main() {
  String? vorname;   // texteingabe vorname
  String? nachname;   // texteingabe nachname
  String? alterEingabe; // altereingabe "21" kommt als Text rein
  int? age; // auch alterseingabe aber brauchen wir damit text als zahl 21 gesehen wird
  String? geschlechtEingabe; // eingabe von geschlecht M F
  Geschlecht? sex; // geschlechter klasse M F speicherort 

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
  print("Fehler! Bitte Namen erneut eingeben: Max, Mustermann, 21, M");
  nachname = stdin.readLineSync(); 
  }
// abfrage nach Alter
  
  print("Vorname, Nachname, Alter, M/F?");
  alterEingabe = stdin.readLineSync();

  if (alterEingabe != null) {
    age = int.tryParse(alterEingabe);
  }
  while (age == null || age < 0 || age > 150) {
  print("Fehler! Bitte Alter erneut eingeben: Max, Mustermann, 21, M");
  alterEingabe = stdin.readLineSync();
  age = int.tryParse(alterEingabe ?? '');
  }
  // frage nach geschlecht 
  print("Vorname, Nachname, Alter, M/F?");
  geschlechtEingabe = stdin.readLineSync(); 
  if (geschlechtEingabe == "M") {
    sex = Geschlecht.M;
  }
  else if (geschlechtEingabe == "F") {
    sex = Geschlecht.F;
  }
  while (sex == null) {
    print("M/F");
  }
//ausgabe greeter mit Vor Nachname Alter und Age
  print("Ich grüße dich $vorname!");
}
