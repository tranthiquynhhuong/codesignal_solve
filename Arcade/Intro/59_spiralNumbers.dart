// Construct a square matrix with a size N × N containing integers from 1 to N * N in a spiral order, starting from top-left and in clockwise direction.

// Example

// For n = 3, the output should be

// spiralNumbers(n) = [[1, 2, 3],
//                     [8, 9, 4],
//                     [7, 6, 5]]
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer n

// Matrix size, a positive integer.

// Guaranteed constraints:
// 3 ≤ n ≤ 100.

// [output] array.array.integer

List<List<int>> spiralNumbers(int n) {
   int no = 0;
  List<List<int>> re = [];
  re.addAll(new List.generate(n, (index) => []));

  for (int i = 0; i < re.length; i++) {
    re[i].addAll(new List.generate(n, (index) => 0));
  }

  int r1 = 0, r2 = n - 1, c1 = 0, c2 = n - 1;

  do {
    for (int i = c1; i <= c2; i++) {
      re[r1][i] = ++no;
      print('1: $no');
    }
    r1++;

    for (int i = r1; i <= c2; i++) {
      re[i][c2] = ++no;
      print('2: $no');
    }
    c2--;

    for (int i = c2; i >= c1; i--) {
      re[r2][i] = ++no;
      print('3: $no');
    }
    r2--;

    for (int i = c2; i >= r1; i--) {
      re[i][c1] = ++no;
      print('4: $no');
    }
    c1++;
  } while (no < n * n);

  return re;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<