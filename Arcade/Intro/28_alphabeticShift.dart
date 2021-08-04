// Given a string, your task is to replace each of its characters by the next one in the English alphabet; i.e. replace a with b, replace b with c, etc (z would be replaced by a).

// Example

// For inputString = "crazy", the output should be alphabeticShift(inputString) = "dsbaz".

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string inputString

// A non-empty string consisting of lowercase English characters.

// Guaranteed constraints:
// 1 ≤ inputString.length ≤ 1000.

// [output] string

// The resulting string after replacing each of its characters.

String alphabeticShift(String inputString) {
  List<String> lst = inputString.split('');

  for (int i = 0; i < lst.length; i++) {
    int code = inputString.codeUnitAt(i);
    print("Code unit for ${lst[i]} is ${code}");
    if (code > 121) {
      code = code % 121 + 95;
      print('c: $code');
    }

    lst[i] = new String.fromCharCode(code + 1);
    print(lst[i]);
  }
  return lst.join();
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<