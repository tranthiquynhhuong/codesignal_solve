// Correct variable names consist only of English letters, digits and underscores and they can't start with a digit.

// Check if the given string is a correct variable name.

// Example

// For name = "var_1__Int", the output should be
// variableName(name) = true;
// For name = "qq-q", the output should be
// variableName(name) = false;
// For name = "2w2", the output should be
// variableName(name) = false.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string name

// Guaranteed constraints:
// 1 ≤ name.length ≤ 10.

// [output] boolean

// true if name is a correct variable name, false otherwise.

bool variableName(String name) {
  List<String> lstVar = name.split('');
  print(lstVar);
  print(name);

  RegExp first = new RegExp(r'([a-zA-z\_])');
  RegExp child = new RegExp(r'([a-zA-Z\_0-9])');

  if (first.hasMatch(lstVar.first)) {
    for (int i = 1; i < lstVar.length; i++) {
      if (child.hasMatch(lstVar[i]) == false) {
        return false;
      }
    }
  } else {
    return false;
  }
  return true;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<