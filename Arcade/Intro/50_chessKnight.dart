// Given a position of a knight on the standard chessboard, find the number of different moves the knight can perform.

// The knight can move to a square that is two squares horizontally and one square vertically, or two squares vertically and one square horizontally away from it. 
// The complete move therefore looks like the letter L. 
// Check out the image below to see all valid moves for a knight piece that is placed on one of the central squares.

// Example

// For cell = "a1", the output should be
// chessKnight(cell) = 2.
// For cell = "c2", the output should be
// chessKnight(cell) = 6.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string cell

// String consisting of 2 letters - coordinates of the knight on an 8 × 8 chessboard in chess notation.

// Guaranteed constraints:
// cell.length = 2,
// 'a' ≤ cell[0] ≤ 'h',
// 1 ≤ cell[1] ≤ 8.

// [output] integer

int chessKnight(String cell) {
  List<String> lstChar = ["a", "b", "c", "d", "e", "f", "g", "h"];

  List<String> cells = cell.split('');
  int step = 0;

  int y = lstChar.indexOf(cell[0]) + 1;
  int x = int.parse(cells[1]);

  if (0 < y - 2 && x + 1 < 9) {
    print('1');
    step++;
  }

  if (0 < y - 2 && x - 1 > 0) {
    step++;
    print('2');
  }

//

  if (y + 2 < 9 && x + 1 < 9) {
    step++;
    print('3');
  }

  if (y + 2 < 9 && x - 1 > 0) {
    step++;
    print('4');
  }

  ///

  if (0 < x - 2 && y + 1 < 9) {
    step++;
    print('5');
  }

  if (0 < x - 2 && y - 1 > 0) {
    step++;
    print('6');
  }

  //

  if (x + 2 < 9 && y + 1 < 9) {
    step++;
    print('7');
  }

  if (x + 2 < 9 && y - 1 > 0) {
    step++;
    print('8');
  }

  return step;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<