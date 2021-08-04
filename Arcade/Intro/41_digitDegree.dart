// Let's define digit degree of some positive integer as the number of times we need to replace this number with the sum of its digits until we get to a one digit number.

// Given an integer, find its digit degree.

// Example

// For n = 5, the output should be
// digitDegree(n) = 0;
// For n = 100, the output should be
// digitDegree(n) = 1.
// 1 + 0 + 0 = 1.
// For n = 91, the output should be
// digitDegree(n) = 2.
// 9 + 1 = 10 -> 1 + 0 = 1.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer n

// Guaranteed constraints:
// 5 ≤ n ≤ 109.

// [output] integer

int digitDegree(int n) {
  if (n < 10) {
    return 0;
  } else {
    return calSum(n);
  }
}

int calSum(int number, {int count = 0}) {
  int c = count;
  List<String> lst = number.toString().split('');
  int sum = 0;
  for (int i = 0; i < lst.length; i++) {
    int no = int.parse(lst[i]);
    sum = sum + no;
  }
  if (sum < 10) {
    return c + 1;
  }
  c++;
  return calSum(sum, count: c);
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<