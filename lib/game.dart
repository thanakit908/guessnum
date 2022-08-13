import 'dart:io';
import 'dart:math';

class Game {
  int answer = 0;
  int count = 1;
  Game(){
    var r = Random();
    answer = r.nextInt(100)+1;
    print('YOUR ANSWER ❣ $answer');
  }
  int doGuess(int num){
    if(num > answer){
      print('$num ▲▲▲ too high ▲▲▲');
      count +=1;
      return 0;
    }
    else if(num < answer){
      print('$num ▼▼▼ too low ▼▼▼');
      count +=1;
      return 0;
    }
    else {
      print('$num ✅✅✅ correct ✅✅✅ , total guesses = $count');
      return 1;
    }
  }
}
