import 'dart:io';

void main(){
board();
}

void board(){
    List<String> board= ['1','2','3','4','5','6','7','8','9'];
    int index=0;
    for(int rows=1;rows<=3;rows++){
        for(int columns=1;columns<=3;columns++){
            stdout.write('${board[index]}');
            index++;
            if(index>=board.length){
                break;
            }
        }
        stdout.write('\n');
    }

    //turn 
    // First Player is Even
    // Second Player is Odds
    int playerTurn=0;


    //input maker
    print("Choose Player");
    print("Player O [1]| Player X[2]");
    String? userChoice= stdin.readLineSync();
    if(userChoice=="o"){
        String playerO= "O";

    }else if(userChoice=="x"){
        String playerX= "X";
    }

    //if user is x replace it on the board with their choice
    //if user is o replace it on the board with their choice


    //checker 
    
}

void Menu(){
    print('============');
    print('1.Play Game \n2.Leaderboard\n3.Exit');
    print('============');
    print('User Choice:');
    String? userChoice= stdin.readLineSync();
    

    //decision structure for main menu
    if( userChoice == '1'){
        print('1');
    }else if(userChoice == '2'){
        print('2');
    }else if(userChoice == '3'){
        exit(0);
    }else{
        print('Invalid Option! Try Again');
    }

}