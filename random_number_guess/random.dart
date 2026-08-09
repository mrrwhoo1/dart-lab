import 'dart:math';
import 'dart:io';

void main() {
  Random random = Random();
  int randomint = random.nextInt(50);

  stdout.write('Guess number: ');
  String? input = stdin.readLineSync();
  int? guessednum = int.tryParse(input ?? '');

  while (guessednum != randomint) {
    if (guessednum == null) {
      print("Can't be null, Try again!");
    } else if (guessednum > randomint) {
      print('too high!');
    } else if (guessednum < randomint) {
      print('too low!');
    }
    stdout.write('Wrong! Try again: ');
    String? input = stdin.readLineSync();
    guessednum = int.tryParse(input ?? '');
  }
  print('Correct!\nExiting.....');
  exit(0);
}
