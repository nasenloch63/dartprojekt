import 'dart:io';
void main() { 
  String? vorname;
  while (vorname == null || vorname.isEmpty) {
    stdout.write('Vorname: ');
    vorname = stdin.readLineSync();
  }
  print(vorname);
  void frageNachname() {
    String? nachname;
    while (nachname == null || nachname.isEmpty) {
      stdout.write('Nachname: ');
      nachname = stdin.readLineSync();
    }
    print(nachname);
}
}