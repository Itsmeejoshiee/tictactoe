import 'dart:io';

void main() {
List<String> board = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
int turns = 3;

while (turns >= 0) {
int value = 0;

print('-------------');

for (int row = 1; row <= 3; row++) {
for (int col = 1; col <= 3; col++) {
stdout.write('| ${board[value]} ');
value++;
if (value >= board.length) {
break;
}
}
stdout.write('|');
print('');
print('-------------');
if (value >= board.length) {
break;
}
}

stdout.write('PLEASE SELECT LOCATION [1-9]: ');
String? locInput = stdin.readLineSync();
int position = int.tryParse(locInput ?? '') ?? -1;

stdout.write('ENTER PIECE [X/O]: ');
String? pieceInput = stdin.readLineSync();

if (position >= 1 && position <= 9) {
// Valid position input (1-9)
board[position - 1] = pieceInput ?? '';
} else {
print('Invalid input. Please enter a number from 1 to 9.');
continue;
}

turns--;
}
}