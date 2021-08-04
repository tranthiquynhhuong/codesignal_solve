// Given a string, output its longest prefix which contains only digits.

// Example

// For inputString = "123aa1", the output should be
// longestDigitsPrefix(inputString) = "123".

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string inputString

// Guaranteed constraints:
// 3 ≤ inputString.length ≤ 100.

// [output] string

String longestDigitsPrefix(String inputString) {
  RegExp reg = new RegExp(r'[0-9]');

  List<String> lst = inputString.split('');
  List<String> re = [];
  bool find = false;

  for (int i = 0; i < lst.length; i++) {
    if (find == false && reg.hasMatch(lst[i])) {
      re.add(lst[i]);
    } else {
      find = true;
    }
  }

  return re.join();
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<