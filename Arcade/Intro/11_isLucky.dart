// Ticket numbers usually consist of an even number of digits. A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.

// Given a ticket number n, determine if it's lucky or not.

// Example

// For n = 1230, the output should be
// isLucky(n) = true;
// For n = 239017, the output should be
// isLucky(n) = false.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer n

// A ticket number represented as a positive integer with an even number of digits.

// Guaranteed constraints:
// 10 ≤ n < 106.

// [output] boolean

// true if n is a lucky ticket number, false otherwise.

bool isLucky(int n) {
  int s = (n.toString().length)~/2;
  List<String> lst = n.toString().split('');
  int s1 = 0;
  int s2 = 0;

  for (int i = 0; i < lst.length; i++) {
    if (i < s) {
     s1 = s1 + int.parse(lst[i]);
    } else {
     s2 = s2 + int.parse(lst[i]);
    }
  }

  return s1 == s2;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<