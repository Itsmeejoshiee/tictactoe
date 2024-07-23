import 'dart:io';

void main(){
    var list =[1,2,3,4,5,6,7,8,9];

    print('============');
    print('1.Play Game \n2.Leaderboard\n3.Exit');
    print('============');
    print('User Choice:');
    String? userChoice= stdin.readLineSync();
    

    //decision structure for main menu
    if( userChoice == 1){
        print('1')
    }else if(userChoice == 2){
        print('2')
    }else if(userChoice == 3){
        print('3')
    }else{
        print('Invalid Option! Try Again')
    }
}