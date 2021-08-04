// Find the leftmost digit that occurs in a given string.

// Example

// For inputString = "var_1__Int", the output should be
// firstDigit(inputString) = '1';
// For inputString = "q2q-q", the output should be
// firstDigit(inputString) = '2';
// For inputString = "0ss", the output should be
// firstDigit(inputString) = '0'.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string inputString

// A string containing at least one digit.

// Guaranteed constraints:
// 3 ≤ inputString.length ≤ 10.

// [output] char

String firstDigit(String inputString) {
  RegExp reg = new RegExp(r'[0-9]');

  for (int i = 0; i < inputString.length; i++) {
    if (reg.hasMatch(inputString[i])) {
      return inputString[i];
    }
  }
  return "";
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<