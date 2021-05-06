import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // ignore: unused_local_variable
  var num, guess;

  Random rand = new Random();
  var answer = rand.nextInt(10);
  print("\n---Welcome to the Game---");
  print("Press ANY KEY to continue ...");
  // ignore: unused_local_variable
  var enter = stdin.readLineSync();
  print("You Have only 3 Chances to guess the right number between 1-10");
  for (var i = 1; i <= 3; i++) {
    print("Enter $i number");
    var num = stdin.readLineSync();
    int guess = int.parse(num!);

    if (guess == (answer - 1)) {
      print("Near about");
    } else if (guess == (answer + 1)) {
      print("Near About");
    } else if (guess < answer) {
      print("Try Higher one");
    } else if (guess > answer) {
      print("Try Lower one");
    } else if (guess == answer) {
      print("hurrah you win!!");
      print("you win in $i attempt\n");
      exit(0);
    }
  }
  print("You loose");
}
