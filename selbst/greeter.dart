import 'dart:io';

enum Geschlecht { m, f }

void main() {
  final vorname = getVorname(); // texteingabe vorname
  final nachname = getNachname(); // texteingabe nachname
  final age = getAlter(); // funktion Alter
  int? alter; // auch alterseingabe aber brauchen wir damit text als zahl 21 gesehen wird
  
  String? geschlechtEingabe; // eingabe von geschlecht M F
  Geschlecht? sex; // geschlechter klasse M F speicherort
  String? anrede;

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

  int? getAlter() {
    //abfrage nach Alter
    print("Alter?");
    var alterEingabe = stdin.readLineSync();
    int? alter = int.tryParse(alterEingabe ?? '');
    while (alter == null || alter < 0 || alter > 150) {
    print("Fehler! Bitte Alter erneut eingeben.");
    alterEingabe = stdin.readLineSync();
    alter = int.tryParse(alterEingabe ?? '');
    }
    return alter;
  }