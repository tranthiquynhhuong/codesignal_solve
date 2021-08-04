// Determine whether the given string can be obtained by one concatenation of some string to itself.

// Example

// For inputString = "tandemtandem", the output should be
// isTandemRepeat(inputString) = true;
// For inputString = "qqq", the output should be
// isTandemRepeat(inputString) = false;
// For inputString = "2w2ww", the output should be
// isTandemRepeat(inputString) = false.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string inputString

// Guaranteed constraints:
// 2 ≤ inputString.length ≤ 20.

// [output] boolean

// true if inputString represents a string concatenated to itself, false otherwise.

bool isTandemRepeat(String inputString) {
  int mid = inputString.length ~/ 2;

  String str1 = inputString.substring(mid, inputString.length);
  String str2 = inputString.substring(0, mid);

  return str1 == str2;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<