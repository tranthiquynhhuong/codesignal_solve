// Given an integer n, return the largest number that contains exactly n digits.

// Example

// For n = 2, the output should be
// largestNumber(n) = 99.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer n

// Guaranteed constraints:
// 1 ≤ n ≤ 9.

// [output] integer

// The largest integer of length n.


int largestNumber(int n) {
  String num = "";

  for (int i = 0; i < n; i++) {
    num += "9";
  }

  return int.parse(num);
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<