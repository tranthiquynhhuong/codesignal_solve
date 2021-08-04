// CodeMaster has just returned from shopping. He scanned the check of the items he bought and gave the resulting string to Ratiorg to figure out the total number of purchased items. Since Ratiorg is a bot he is definitely going to automate it, so he needs a program that sums up all the numbers which appear in the given input.

// Help Ratiorg by writing a function that returns the sum of numbers that appear in the given inputString.

// Example

// For inputString = "2 apples, 12 oranges", the output should be
// sumUpNumbers(inputString) = 14.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string inputString

// Guaranteed constraints:
// 0 ≤ inputString.length ≤ 105.

// [output] integer


int sumUpNumbers(String inputString) {
  RegExp re = new RegExp(r'[\d]');
  List<String> lst = inputString.split('');
  int sum = 0;
  String tmp = "";

  print(lst);
  for (int i = 0; i < lst.length; i++) {
    if (re.hasMatch(lst[i])) {
      tmp = tmp + lst[i];
      print(tmp);
    }
    if (re.hasMatch(lst[i]) && i == lst.length - 1) {
      sum += int.parse(tmp);
      return sum;
    }
    if (re.hasMatch(lst[i]) == false) {
      if (tmp.isNotEmpty) {
        sum += int.parse(tmp);
      }
      tmp = "";
    }
  }
  return sum;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<
