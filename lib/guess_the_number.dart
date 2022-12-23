// ignore_for_file: avoid_print
import 'dart:io';
import 'package:hello_flutter/game.dart';
import 'num.dart';

void main(){
  var g1 = Game(100,"kit",20);
  print("╔═══════════Guess number═══════════════");
  while(true) {
    stdout.write("Guess number 1 and 100 : ");
    var input = stdin.readLineSync();
    //print("Your input is $input");
    if (input == null) {
      //print("Error,input is NULL");
      continue;
    }
    var guess = int.tryParse(input);
    if (guess == null) {
      //print("INPUT ERROR,number only");
      continue;
    } else if (guess > 100 || guess < 1) {
      print("N/A number");
      continue;
    }

    GuessResult result = g1.doGuess(g1.answer, guess);
    if (result == GuessResult.correct) {
      print("═══════════════════════════════════════");
      print("❤ ${g1.answer} is Correct " + " ,total guess : ${g1.totalGuess}");
      break;
    }
    else if(result == GuessResult.tooHigh){
      print("➜ $guess is Too High! ▲");
      print("═══════════════════════════════════════");
    }
    else if(result == GuessResult.tooLow){
      print("➜ $guess is Too Low! ▼");
      print("═══════════════════════════════════════");
    }

  }

}
