import 'dart:io';
void main() { 
  String? vorname;
  while (vorname == null || vorname.isEmpty) {
    stdout.write('Vorname: ');
    vorname = stdin.readLineSync();
  }
  print(vorname);
}
void frageNachname() {
  String? frageNachname;
  while (frageNachname == null || frageNachname.isEmpty) {
    stdout.write('Nachname: ');
    frageNachname = stdin.readLineSync();
  }
  print(frageNachname);
}