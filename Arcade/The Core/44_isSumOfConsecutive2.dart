// Find the number of ways to express n as sum of some (at least two) consecutive positive integers.

// Example

// For n = 9, the output should be
// isSumOfConsecutive2(n) = 2.

// There are two ways to represent n = 9: 2 + 3 + 4 = 9 and 4 + 5 = 9.

// For n = 8, the output should be
// isSumOfConsecutive2(n) = 0.

// There are no ways to represent n = 8.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer n

// A positive integer.

// Guaranteed constraints:
// 1 ≤ n ≤ 104.

// [output] integer

int isSumOfConsecutive2(int n) {
  int sum = 0;
  int c = 0;

  for (int i = 1; i < n; i++) {
    sum = 0;
    for (int j = i; j < n; j++) {
      sum = sum + j;
      if (sum == n) {
        c++;
      }
    }
  }

  return c;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.< 
