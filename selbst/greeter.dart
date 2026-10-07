import 'dart:io';

enum Geschlecht { m, f }

void main() {
  final vorname = getVorname(); // texteingabe vorname
  final nachname = getNachname(); // texteingabe nachname
  final age = getAlter(); // funktion Alter
  final geschlecht = getGeschlecht();
  String? anrede;

  //ausgaben variationen
  if (geschlecht == Geschlecht.m) {
    anrede = "Herr";
  } else if (geschlecht == Geschlecht.f) {
    anrede = "Frau";
  }
  if (age < 40) {
    print("Hallo, $vorname!");
  } else {
    int? stunde = DateTime.now().hour;
    if (stunde < 12) {
      print("Guten Morgen $anrede $nachname! Sie sind $age Jahre alt & $geschlecht!");
    } else if (stunde < 18) {
      print("Guten Tag $anrede $nachname! Du bist $age Jahre alt & $geschlecht!");
    } else {
      print("Guten Abend $anrede $nachname! Du bist $age Jahre alt & $geschlecht!");
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
    print("Fehler, bitte Nachnamen erneut eingeben.");
    nachname = stdin.readLineSync();
  }
  return nachname;
}

int getAlter() { // auch alterseingabe aber brauchen wir damit text als zahl 21 gesehen wird
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

Geschlecht getGeschlecht() {
  print("M/F");
  while (true) {
    var geschlecht = stdin.readLineSync();
    if (geschlecht == "M") {
      return Geschlecht.m;
    } else if (geschlecht == "F") {
      return Geschlecht.f;
    }
    print("Fehler! Du bist entweder M oder F!");
    print("M/F");
  }
}
