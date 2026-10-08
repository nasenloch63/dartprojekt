import 'dart:math';
import 'dart:io';

void main() {
  final limit = getLimit();
  rollDice(limit);
}
int getLimit() {
  String? limitEingabe;
  int? limit;

  print("Wie oft maximal würfeln?");
  limitEingabe = stdin.readLineSync();
  limit = int.tryParse(limitEingabe ?? '');
  while (limit == null) {
    print("Falsche Eingabe! Gib eine Zahl ein!");
    limitEingabe = stdin.readLineSync();
    limit = int.tryParse(limitEingabe ?? '');
  }
  return limit;
}
void rollDice(int limit) {
  var rng = Random();

  for (var i = 0; i < limit; i++) {
    print(rng.nextInt(6) + 1);
  }
}
