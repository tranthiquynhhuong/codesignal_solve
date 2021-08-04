// Given a string, find the number of different characters in it.

// Example

// For s = "cabca", the output should be
// differentSymbolsNaive(s) = 3.

// There are 3 different characters a, b and c.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string s

// A string of lowercase English letters.

// Guaranteed constraints:
// 3 ≤ s.length ≤ 1000.

// [output] integer

int differentSymbolsNaive(String s) {
  List<String> lst = s.split('');
  List<String> lstDiff = [];

  for (int i = 0; i < s.length; i++) {
    if (lstDiff.contains(lst[i]) == false) {
      lstDiff.add(lst[i]);
    }
  }

  return lstDiff.length;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<