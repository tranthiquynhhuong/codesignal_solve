// Given a string, find out if its characters can be rearranged to form a palindrome.

// Example

// For inputString = "aabb", the output should be
// palindromeRearranging(inputString) = true.

// We can rearrange "aabb" to make "abba", which is a palindrome.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string inputString

// A string consisting of lowercase English letters.

// Guaranteed constraints:
// 1 ≤ inputString.length ≤ 50.

// [output] boolean

// true if the characters of the inputString can be rearranged to form a palindrome, false otherwise.

bool palindromeRearranging(String inputString) {
  Map<String, int> data = {};
  List<String> lst = inputString.split('');
  int c = 0;

  if (inputString.length < 2) {
    return true;
  }

  for (int i = 0; i < lst.length; i++) {
    bool isHave = data.containsKey(lst[i]);

    if (isHave) {
      data["${lst[i]}"] = data["${lst[i]}"] == 1 ? 0 : 1;
    } else {
      data["${lst[i]}"] = 1;
    }
  }
 List lstmap = [];
  data.forEach((k, v) => lstmap.add(v));
  for (int i = 0; i < lstmap.length; i++) {
    if (lstmap[i] == 1) {
      c++;
    }
    if (c > 1) {
      return false;
    }
  }
  return true;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<