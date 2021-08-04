// Given the positions of a white bishop and a black pawn on the standard chess board, determine whether the bishop can capture the pawn in one move.

// The bishop has no restrictions in distance for each move, but is limited to diagonal movement. Check out the example below to see how it can move:
// Example

// For bishop = "a1" and pawn = "c3", the output should be
// bishopAndPawn(bishop, pawn) = true.

// For bishop = "h1" and pawn = "h3", the output should be
// bishopAndPawn(bishop, pawn) = false.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string bishop

// Coordinates of the white bishop in the chess notation.

// Guaranteed constraints:
// bishop.length = 2,
// 'a' ≤ bishop[0] ≤ 'h',
// 1 ≤ bishop[1] ≤ 8.

// [input] string pawn

// Coordinates of the black pawn in the same notation.

// Guaranteed constraints:
// pawn.length = 2,
// 'a' ≤ pawn[0] ≤ 'h',
// 1 ≤ pawn[1] ≤ 8.

// [output] boolean

// true if the bishop can capture the pawn, false otherwise.

bool bishopAndPawn(String bishop, String pawn) {
  List<String> lstC = ["a", "b", "c", "d", "e", "f", "g", "h"];
  List<String> lstTrue = [];

  int b1 = lstC.indexOf(bishop.split('').first) + 1;
  int p1 = lstC.indexOf(pawn.split('').first) + 1;

  int b2 = int.parse(bishop.split('').last);
  int p2 = int.parse(pawn.split('').last);

  int hieu1 = (b1 - b2).abs();
  int hieu2 = ((8 - b1 + 1) - b2).abs();

  if ((p1 - p2).abs() == hieu1 || ((8 - p1 + 1) - p2).abs() == hieu2) {
    return true;
  } else {
    return false;
  }
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<
