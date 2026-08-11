import 'dart:io';
import 'dart:math';

void main() {
  Map<String, String> winningRules = {
    'ROCK': 'SCISSORS',
    'SCISSORS': 'PAPER',
    'PAPER': 'ROCK',
  };

  List<String> cpu = ['Rock', 'Paper', 'Scissors'];
  Random random = Random();
  int randomindex = random.nextInt(cpu.length);
  String randmcpu = cpu[randomindex].toUpperCase();

  stdout.write('Rock, Paper, Scissors?: ');
  String? input = (stdin.readLineSync() ?? '').trim().toUpperCase();

  if (input == randmcpu) {
    print("It's a tie!, you both picked $input.");
  } else if (winningRules[input] == randmcpu) {
    print('You win!, computer chose $randmcpu.');
  } else {
    print("You loose!, You picked $input and computer picked $randmcpu.");
  }
  exit(0);
}
