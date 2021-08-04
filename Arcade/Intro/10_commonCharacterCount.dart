// Given two strings, find the number of common characters between them.

// Example

// For s1 = "aabcc" and s2 = "adcaa", the output should be
// commonCharacterCount(s1, s2) = 3.

// Strings have 3 common characters - 2 "a"s and 1 "c".

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string s1

// A string consisting of lowercase English letters.

// Guaranteed constraints:
// 1 ≤ s1.length < 15.

// [input] string s2

// A string consisting of lowercase English letters.

// Guaranteed constraints:
// 1 ≤ s2.length < 15.

// [output] integer

int commonCharacterCount(String s1, String s2) {
  String strMin;
  String strMax;

  if (s1.compareTo(s2) == -1) {
    strMin = s1;
    strMax = s2;
  } else {
    strMin = s2;
    strMax = s1;
  }

  List<String> lstMin = strMin.split("");
  List<String> lstMatch = [];
  
  for (int i = 0; i < lstMin.length; i++) {
    if (strMax.contains(lstMin[i])) {
      lstMatch.add(lstMin[i]);
      strMax = strMax.replaceFirst(lstMin[i], '');
      print('strMax: $strMax');
    }
  }
  return lstMatch.length;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<