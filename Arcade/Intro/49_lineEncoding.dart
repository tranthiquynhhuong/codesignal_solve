// Given a string, return its encoding defined as follows:

// First, the string is divided into the least possible number of disjoint substrings consisting of identical characters
// for example, "aabbbc" is divided into ["aa", "bbb", "c"]
// Next, each substring with length greater than one is replaced with a concatenation of its length and the repeating character
// for example, substring "bbb" is replaced by "3b"
// Finally, all the new strings are concatenated together in the same order and a new string is returned.
// Example

// For s = "aabbbc", the output should be
// lineEncoding(s) = "2a3bc".

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string s

// String consisting of lowercase English letters.

// Guaranteed constraints:
// 4 ≤ s.length ≤ 15.

// [output] string

// Encoded version of s.

String lineEncoding(String s) {
  List<String> lst = s.split('');
  List<String> lstRe = [];

  int c = 1;

  for (int i = 0; i < lst.length - 1; i++) {
    if (lst[i] != lst[i + 1]) {
      lstRe.add("${c == 1 ? "" : c}${lst[i]}");
      c = 1;
    }

    if (lst[i] == lst[i + 1]) {
      c++;
    }
  }

  if (lst[lst.length - 2] != lst[lst.length - 1]) {
    lstRe.add("${lst[lst.length - 1]}");
  } else {
    lstRe.add("$c${lst[lst.length - 1]}");
  }

  return lstRe.join();
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<