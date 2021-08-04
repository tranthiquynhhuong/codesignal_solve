// Given the string, check if it is a palindrome.

// Example

// For inputString = "aabaa", the output should be
// checkPalindrome(inputString) = true;
// For inputString = "abac", the output should be
// checkPalindrome(inputString) = false;
// For inputString = "a", the output should be
// checkPalindrome(inputString) = true.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string inputString

// A non-empty string consisting of lowercase characters.

// Guaranteed constraints:
// 1 ≤ inputString.length ≤ 105.

// [output] boolean

// true if inputString is a palindrome, false otherwise.

bool checkPalindrome(String inputString) {
 String b = "";
  List<String> c = inputString.split('');
  for (int i = c.length - 1; i > -1; i--) {
    b = b + c[i];
  }
  return inputString == b;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<
