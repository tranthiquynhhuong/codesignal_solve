// Determine if the given character is a digit or not.

// Example

// For symbol = '0', the output should be
// isDigit(symbol) = true;
// For symbol = '-', the output should be
// isDigit(symbol) = false.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] char symbol

// A character which is either a digit or not.

// Guaranteed constraints:
// Given symbol is from ASCII table.

// [output] boolean

// true if symbol is a digit, false otherwise.

bool isDigit(String symbol) {
RegExp re = new RegExp(r'^[\d]');

  return re.hasMatch(symbol);
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<