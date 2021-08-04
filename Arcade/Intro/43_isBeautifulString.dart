// A string is said to be beautiful if each letter in the string appears at most as many times as the previous letter in the alphabet within the string; ie: b occurs no more times than a; c occurs no more times than b; etc. Note that letter a has no previous letter.

// Given a string, check whether it is beautiful.

// Example

// For inputString = "bbbaacdafe", the output should be isBeautifulString(inputString) = true.

// This string contains 3 as, 3 bs, 1 c, 1 d, 1 e, and 1 f (and 0 of every other letter), so since there aren't any letters that appear more frequently than the previous letter, this string qualifies as beautiful.

// For inputString = "aabbb", the output should be isBeautifulString(inputString) = false.

// Since there are more bs than as, this string is not beautiful.

// For inputString = "bbc", the output should be isBeautifulString(inputString) = false.

// Although there are more bs than cs, this string is not beautiful because there are no as, so therefore there are more bs than as.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string inputString

// A string of lowercase English letters.

// Guaranteed constraints:
// 3 ≤ inputString.length ≤ 50.

// [output] boolean

// Return true if the string is beautiful, false otherwise.

bool isBeautifulString(String inputString) {
  List<String> lst = inputString.split('');
  List<int> stringCode = [];
  List<List<int>> lstCount = [];

  for (int i = 0; i < lst.length; i++) {
    int code = lst[i].codeUnitAt(0);
    if (stringCode.contains(code) == false) {
      stringCode.add(code);
      lstCount.add([code, 1]);
    } else {
      lstCount[stringCode.indexOf(code)][1] = lstCount[stringCode.indexOf(code)][1] + 1;
    }
  }
  
  lstCount.sort((a, b) => a[0].compareTo(b[0]));
  if (lstCount[lstCount.length - 1][0] - 97 != lstCount.length - 1) {
    return false;
  }

  for (int i = 0; i < lstCount.length - 1; i++) {
    if (lstCount[i + 1][0] - lstCount[i][0] != 1) {
      return false;
    }

    if (lstCount[i + 1][1] > lstCount[i][1]) {
      return false;
    }
  }

  return true;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<