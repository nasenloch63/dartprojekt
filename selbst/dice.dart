import 'dart:math';
import 'dart:io';

void main() {
  var rng = Random();
  String? limitEingabe;
  int? limit;
  print("Wie oft maximal würfeln?");
  limitEingabe = stdin.readLineSync();
  limit = int.tryParse(limitEingabe ?? '');
  if (limit != null) {
    for (var i = 0; i < limit; i++) {
      print(rng.nextInt(6) + 1);
  }
  }
  else {
    print("Falsche Eingabe! Gib eine Zahl ein!");
  }
  while (limit == null || limit.isEmpty) {
    print("")
  }
}