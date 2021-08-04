// Given some integer, find the maximal number you can obtain by deleting exactly one digit of the given number.

// Example

// For n = 152, the output should be
// deleteDigit(n) = 52;
// For n = 1001, the output should be
// deleteDigit(n) = 101.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer n

// Guaranteed constraints:
// 10 ≤ n ≤ 106.

// [output] integer

int deleteDigit(int n) {
  int max = 0;
  List<String> lst = n.toString().split('');

  for (int i = 0; i < lst.length; i++) {
    List<String> tmp = [];
    tmp.addAll(lst);

    tmp.remove(lst[i]);
    int item = int.parse(tmp.join());
    if (item > max) {
      max = item;
    }
  }

  return max;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<
