// Given a rectangular matrix containing only digits, calculate the number of different 2 × 2 squares in it.

// Example

// For

// matrix = [[1, 2, 1],
//           [2, 2, 2],
//           [2, 2, 2],
//           [1, 2, 3],
//           [2, 2, 1]]
// the output should be
// differentSquares(matrix) = 6.

// Here are all 6 different 2 × 2 squares:

// 1 2
// 2 2
// 2 1
// 2 2
// 2 2
// 2 2
// 2 2
// 1 2
// 2 2
// 2 3
// 2 3
// 2 1
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] array.array.integer matrix

// Guaranteed constraints:
// 1 ≤ matrix.length ≤ 100,
// 1 ≤ matrix[i].length ≤ 100,
// 0 ≤ matrix[i][j] ≤ 9.

// [output] integer

// The number of different 2 × 2 squares in matrix.


int differentSquares(List<List<int>> matrix) {
  int h = matrix.length;
  int w = matrix.first.length;

  List<String> subMatrix = [];

  if (w == 1 || h == 1) {
    return 0;
  }

  for (int i = 0; i < w - 1; i++) {
    for (int j = 0; j < h - 1; j++) {
      String str = "${matrix[j][i]} ${matrix[j][i + 1]} ${matrix[j + 1][i]} ${matrix[j + 1][i + 1]}";
      if (subMatrix.contains(str) == false) {
        subMatrix.add(str);
      }
    }
  }

  return subMatrix.length;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<