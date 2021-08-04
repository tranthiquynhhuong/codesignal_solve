// Given an array of equal-length strings, you'd like to know if it's possible to rearrange the order of the elements in such a way that each consecutive pair of strings differ by exactly one character. Return true if it's possible, and false if not.

// Note: You're only rearranging the order of the strings, not the order of the letters within the strings!

// Example

// For inputArray = ["aba", "bbb", "bab"], the output should be
// stringsRearrangement(inputArray) = false.

// There are 6 possible arrangements for these strings:

// ["aba", "bbb", "bab"]
// ["aba", "bab", "bbb"]
// ["bbb", "aba", "bab"]
// ["bbb", "bab", "aba"]
// ["bab", "bbb", "aba"]
// ["bab", "aba", "bbb"]
// None of these satisfy the condition of consecutive strings differing by 1 character, so the answer is false.

// For inputArray = ["ab", "bb", "aa"], the output should be
// stringsRearrangement(inputArray) = true.

// It's possible to arrange these strings in a way that each consecutive pair of strings differ by 1 character (eg: "aa", "ab", "bb" or "bb", "ab", "aa"), so return true.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] array.string inputArray

// A non-empty array of strings of lowercase letters.

// Guaranteed constraints:
// 2 ≤ inputArray.length ≤ 10,
// 1 ≤ inputArray[i].length ≤ 15.

// [output] boolean

// Return true if the strings can be reordered in such a way that each neighbouring pair of strings differ by exactly one character (false otherwise).

bool isDiffOne(List<String> s1) {

  for (int i = 0; i < s1.length - 1; i++) {
        int diff = 0;

    String a = s1[i];
    String b = s1[i + 1];

    for (int j = 0; j < a.length; j++) {
      if (a[j] != b[j]) {
        diff++;
        if (diff > 1) {
          return false;
        }
      }
    }
     if (diff != 1) {
    return false;
  }
  }
  return true;
}

bool check(List<String> s1, List<String> s2) {
  if (s2.isEmpty) {
    return isDiffOne(s1);
  }
  for (int i = 0; i < s2.length; i++) {
    List<String> s11 = [];
    s11.addAll(s1);
    s11.add(s2[i]);
    List<String> s22 = new List.from(s2);
    s22.removeAt(i);
    bool rs = check(s11, s22);
    if (rs == true) {
      return rs;
    }
  }
  return false;
}

bool stringsRearrangement(List<String> inputArray) {
  for (int i = 0; i < inputArray.length; i++) {
    List<String> s1 = [inputArray[i]];
    List<String> s2 = new List.from(inputArray);
    s2.removeAt(i);
    bool rs = check(s1, s2);
    if (rs == true) {
      return rs;
    }
  }
  return false;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<


