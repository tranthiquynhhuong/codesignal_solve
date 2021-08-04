// You are given a two-digit integer n. Return the sum of its digits.

// Example

// For n = 29, the output should be
// addTwoDigits(n) = 11.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer n

// A positive two-digit integer.

// Guaranteed constraints:
// 10 ≤ n ≤ 99.

// [output] integer

// The sum of the first and second digits of the input number.

int addTwoDigits(int n) {
  List<String> lst = n.toString().split('');
  int sum = 0;

  for (int i = 0; i < lst.length; i++) {
    sum += int.parse(lst[i]);
  }

  return sum;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<
