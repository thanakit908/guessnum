class Game {
  int maxRandom = 0;
  var count = <int>[];
  Game(){
    var game = Game(maxRandom: 100);

    print('Enter a maximum number to randaom ❣ $maxRandom');
  }

  int doGuess(int num){

    if(num > maxRandom){
      print('$num ▲▲▲ too high ▲▲▲')
      count +=1;
    return 0;
    }
    else if(num < maxRandom){
      print('$num ▼▼▼ too low ▼▼▼');
      count +=1;
      return 0;
    }
    else{
      print('$num ✅✅✅ correct ✅✅✅ , total guesses = $count');
      print('Do you want continue?');
      var x = stdin.readLineSync();
      if(x =="Y" || x == "y"){
        return 0;
      }
      if(x == "N" || x =="n"){
        return 1;
      }
      else {
        return 0;
      }
    }
  }
}