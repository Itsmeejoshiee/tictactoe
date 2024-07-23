import 'dart:io';

class TicTacToe {
  //board
  Map<int, String> board = {
    1: "", 2: "", 3: "",
    4: "", 5: "", 6: "",
    7: "", 8: "", 9: "",
  };

  List<List<int>> winningCombinations = [
    [1, 2, 3], [4, 5, 6], [7, 8, 9], // Rows
    [1, 4, 7], [2, 5, 8], [3, 6, 9], // Columns
    [1, 5, 9], [3, 5, 7] // Diagonals
  ];

  void displayBoard() {
    print('${board[1]} | ${board[2]} | ${board[3]}');
    print('---------');
    print('${board[4]} | ${board[5]} | ${board[6]}');
    print('---------');
    print('${board[7]} | ${board[8]} | ${board[9]}');
  }

  bool checkWin(String player) {
    for (var combination in winningCombinations) {
      if (board[combination[0]] == player &&
          board[combination[1]] == player &&
          board[combination[2]] == player) {
        return true;
      }
    }
    return false;
  }

  bool checkDraw() {
    return board.values.every((value) => value != "");
  }

  void playGame() {
    String currentPlayer = '';
    while(true){
      print("[1] Player X");
      print("[2] Player O");
      String? userChoice = stdin.readLineSync();

      if (userChoice == '1') {
        currentPlayer = 'X';
        break;
      } else if (userChoice == '2') {
        currentPlayer = 'O';
        break;
      } else {
        print("Invalid Option. Please try again.");
      }      
    }

    while (true) {
      displayBoard();
      print('\nPlayer $currentPlayer, enter your move [1-9]:');
      int? playerMove = int.tryParse(stdin.readLineSync()!);

      if (playerMove == null || playerMove < 1 || playerMove > 9 || board[playerMove] != "") {
        print("Invalid move. Please try again.");
        continue;
      }

      board[playerMove] = currentPlayer;

      if (checkWin(currentPlayer)) {
        displayBoard();
        print('Player $currentPlayer wins!');
        break;
      }

      if (checkDraw()) {
        displayBoard();
        print('The game is a draw.');
        break;
      }

      currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
    }
  }
}

void main() {
  TicTacToe game = TicTacToe();
  game.playGame();
}
