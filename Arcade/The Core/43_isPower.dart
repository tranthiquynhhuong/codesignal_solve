// Determine if the given number is a power of some non-negative integer.

// Example

// For n = 125, the output should be
// isPower(n) = true;
// For n = 72, the output should be
// isPower(n) = false.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer n

// A positive integer.

// Guaranteed constraints:
// 1 ≤ n ≤ 400.

// [output] boolean

// true if n can be represented in the form ab (a to the power of b) where a and b are some non-negative integers and b ≥ 2, false otherwise.

bool isPower(int n) {
  if (n == 1) {
    return true;
  }

  for (int x = 2; x <= sqrt(n); x++) {
    int y = 2;
    var p = pow(x, y);

    while (p <= n && p > 0) {
      if (p == n) {
        return true;
      }
      y++;
      p = pow(x, y);
    }
  }
  return false;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.< 

