// Check if all digits of the given integer are even.

// Example

// For n = 248622, the output should be
// evenDigitsOnly(n) = true;
// For n = 642386, the output should be
// evenDigitsOnly(n) = false.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer n

// Guaranteed constraints:
// 1 ≤ n ≤ 109.

// [output] boolean

// true if all digits of n are even, false otherwise.

bool evenDigitsOnly(int n) {
  List<String> lst = n.toString().split('');
  for (int i = 0; i < lst.length; i++) {
    if (int.parse(lst[i]) % 2 != 0) {
      return false;
    }
  }
  return true;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<