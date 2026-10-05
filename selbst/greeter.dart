import 'dart:io';

enum Geschlecht { m, f }

void main() {
  final vorname = getVorname(); // texteingabe vorname
  final nachname = getNachname(); // texteingabe nachname
  String? alterEingabe; // altereingabe "21" kommt als Text rein
  int? age; // auch alterseingabe aber brauchen wir damit text als zahl 21 gesehen wird
  String? geschlechtEingabe; // eingabe von geschlecht M F
  Geschlecht? sex; // geschlechter klasse M F speicherort
  String? anrede;
  
  // abfrage nach Alter

  print("Alter?");
  alterEingabe = stdin.readLineSync();

  if (alterEingabe != null) {
    age = int.tryParse(alterEingabe);
  }
  while (age == null || age < 0 || age > 150) {
    print("Fehler! Bitte Alter erneut eingeben.");
    alterEingabe = stdin.readLineSync();
    age = int.tryParse(alterEingabe ?? '');
  }
  // frage nach geschlecht
  print("M/F?");
  geschlechtEingabe = stdin.readLineSync();
  if (geschlechtEingabe == "M") {
    sex = Geschlecht.m;
  } else if (geschlechtEingabe == "F") {
    sex = Geschlecht.f;
  }
  while (sex == null) {
    print("Fehler! Du bist entweder M oder W!");
    print("M/F");
    geschlechtEingabe = stdin.readLineSync();
    if (geschlechtEingabe == "M") {
      sex = Geschlecht.m;
    } else if (geschlechtEingabe == "F") {
      sex = Geschlecht.f;
    }
  }
  //ausgaben variationen
  if (sex == Geschlecht.m) {
    anrede = "Herr";
  } else if (sex == Geschlecht.f) {
    anrede = "Frau";
  }
  if (age < 40) {
    print("Hallo, $vorname!");
  } else {
    int? stunde = DateTime.now().hour;
    if (stunde < 12) {
      print("Guten Morgen $anrede $nachname! Sie sind $age Jahre alt & $geschlechtEingabe!");
    } else if (stunde < 18) {
      print("Guten Tag $anrede $nachname! Du bist $age Jahre alt & $geschlechtEingabe!");
    } else {
      print("Guten Abend $anrede $nachname! Du bist $age Jahre alt & $geschlechtEingabe!");
    }
  }
}

String getVorname() {
  // abfrage nach Vorname
  print("Vorname?");
  var vorname = stdin.readLineSync();
  while (vorname == null || vorname.isEmpty) {
    print("Fehler! Bitte Vorname erneut eingeben.");
    vorname = stdin.readLineSync();
  }
  return vorname;
}

String getNachname() {
  //abfrage nach Nachname
  print("Nachname?");
  var nachname = stdin.readLineSync();
  while (nachname == null || nachname.isEmpty) {
    print("Fehler, Bitte Nachnamen erneut eingeben.");
    nachname = stdin.readLineSync();
  }
  return nachname;
  }