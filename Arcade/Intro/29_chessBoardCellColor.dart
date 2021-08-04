// Given two cells on the standard chess board, determine whether they have the same color or not.Example

// For cell1 = "A1" and cell2 = "C3", the output should be
// chessBoardCellColor(cell1, cell2) = true

// For cell1 = "A1" and cell2 = "H3", the output should be
// chessBoardCellColor(cell1, cell2) = false.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string cell1

// Guaranteed constraints:
// cell1.length = 2,
// 'A' ≤ cell1[0] ≤ 'H',
// 1 ≤ cell1[1] ≤ 8.

// [input] string cell2

// Guaranteed constraints:
// cell2.length = 2,
// 'A' ≤ cell2[0] ≤ 'H',
// 1 ≤ cell2[1] ≤ 8.

// [output] boolean

// true if both cells have the same color, false otherwise.

bool chessBoardCellColor(String cell1, String cell2) {
  if (cell1 == cell2) {
    return true;
  } else {
    return getColor(cell1) == getColor(cell2);
  }
}

int getColor(String cell) {
  List<int> lstNum = [1, 2, 3, 4, 5, 6, 7, 8];
  List<String> lstChar = ["A", "B", "C", "D", "E", "F", "G", "H"];

  int i = int.parse(cell.split('').last);

  int jNum = lstNum[lstChar.indexOf(cell.split('').first)];

  int k = (jNum - i).abs();

  if (k % 2 == 0) {
    return 1;
  } else {
    return 0;
  }
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<