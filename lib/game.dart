import 'dart:math';
// ignore_for_file: avoid_print
enum GuessResult{correct, tooHigh, tooLow}
class Game {
  final int answer;
  int _totalGuess = 0;
  String name;
  int age;
  int max;
  //Game() : answer = Random().nextInt(100)+1;
  Game(this.max,this.name,this.age) : answer = Random().nextInt(max) + 1{
    print("Answer is : $answer ");
  }

  GuessResult doGuess(answer,int guess) {
    _totalGuess++;
    if (answer == guess) {
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else{
      return GuessResult.tooLow;
    }
  }

  int get totalGuess {
    return _totalGuess;
  }
}
