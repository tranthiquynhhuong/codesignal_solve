// Given an integer n, find the minimal k such that

// k = m! (where m! = 1 * 2 * ... * m) for some integer m;
// k >= n.
// In other words, find the smallest factorial which is not less than n.

// Example

// For n = 17, the output should be
// leastFactorial(n) = 24.

// 17 < 24 = 4! = 1 * 2 * 3 * 4, while 3! = 1 * 2 * 3 = 6 < 17).

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer n

// A positive integer.

// Guaranteed constraints:
// 1 ≤ n ≤ 120.

// [output] integer

int leastFactorial(int n) {
  if (n == 1) return n;
  int k = 1;
  int m = 1;
  while (k <= n) {
    k = k * (m + 1);
    m++;

    if (k == n) return k;
  }
  return k;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<  