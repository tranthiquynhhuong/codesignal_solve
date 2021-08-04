// Given a string, find the shortest possible string which can be achieved by adding characters to the end of initial string to make it a palindrome.

// Example

// For st = "abcdc", the output should be
// buildPalindrome(st) = "abcdcba".

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string st

// A string consisting of lowercase English letters.

// Guaranteed constraints:
// 3 ≤ st.length ≤ 10.

// [output] string

String buildPalindrome(String st) {
  List<String> root = [];
  root.addAll(st.split(''));
  List<String> reverse = root.reversed.join().split('');
  List<String> a = [];

  if (st == reverse.join()) {
    return st;
  }

  for (int i = 0; i < st.length; i++) {
    a.add(root.first);
    root.removeAt(0);

    String s2 = root.reversed.join().split('').join();
    if (root.join() == s2) {
      return a.join() + s2 + a.reversed.join();
    }
  }

  return st;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<
