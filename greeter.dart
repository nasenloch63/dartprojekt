import 'dart:io';
void main() { 
  String? vorname;
  while (vorname == null || vorname.isEmpty) {
    stdout.write('Vorname_ ');
    vorname = stdin.readLineSync();
  }
  print(vorname);
}