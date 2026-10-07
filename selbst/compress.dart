import 'dart:io';

void main() {
  final eingabe = getEingabe();
  final ergebnis = compress(eingabe);
  print(ergebnis);
}

String getEingabe() {
  print("Welchen String möchtest du komprimieren?");
  var eingabe = stdin.readLineSync() ?? "";
  return eingabe;
} 
String compress(String s) {
  var anzahl = 1;
  var ergebnis = "";
  for (var i = 0; i < s.length - 1; i++) {
    if (s[i] == s[i + 1]) {
      anzahl++;
    }  
    else {
      if (anzahl >= 3) {
          ergebnis += "${s[i]}$anzahl";
        } else {
          for (int j = 0; j < anzahl; j++) {
            ergebnis += "${s[i]}";
          }
        } anzahl = 1;
   }
  }
      if (anzahl >= 3) {
        ergebnis += "${s[s.length - 1]}$anzahl";
      } else {
        for (int j = 0; j < anzahl; j++) {
          ergebnis += "${s[s.length - 1]}";
        }
      } return ergebnis;
    }
  
