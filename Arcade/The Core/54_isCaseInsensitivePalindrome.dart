// Given a string, check if it can become a palindrome through a case change of some (possibly, none) letters.

// Example

// For inputString = "AaBaa", the output should be
// isCaseInsensitivePalindrome(inputString) = true.

// "aabaa" is a palindrome as well as "AABAA", "aaBaa", etc.

// For inputString = "abac", the output should be
// isCaseInsensitivePalindrome(inputString) = false.

// All the strings which can be obtained via changing case of some group of letters, i.e. "abac", "Abac", "aBAc" and 13 more, are not palindromes.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string inputString

// Non-empty string consisting of English letters.

// Guaranteed constraints:
// 4 ≤ inputString.length ≤ 10.

// [output] boolean

bool isCaseInsensitivePalindrome(String inputString) {
  int mid = inputString.length ~/ 2;

  List<String> str1 = inputString.substring(0, mid).split('');
  List<String> str2 =
      inputString.substring(inputString.length % 2 == 0 ? mid : mid + 1, inputString.length).split('');

  str2 = str2.reversed.toList();

  for (int i = 0; i < str1.length; i++) {
    if (str1[i].toLowerCase() != str2[i].toLowerCase()) {
      return false;
    }
  }
  return true;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<