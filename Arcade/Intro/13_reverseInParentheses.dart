// Write a function that reverses characters in (possibly nested) parentheses in the input string.

// Input strings will always be well-formed with matching ()s.

// Example

// For inputString = "(bar)", the output should be
// reverseInParentheses(inputString) = "rab";
// For inputString = "foo(bar)baz", the output should be
// reverseInParentheses(inputString) = "foorabbaz";
// For inputString = "foo(bar)baz(blim)", the output should be
// reverseInParentheses(inputString) = "foorabbazmilb";
// For inputString = "foo(bar(baz))blim", the output should be
// reverseInParentheses(inputString) = "foobazrabblim".
// Because "foo(bar(baz))blim" becomes "foo(barzab)blim" and then "foobazrabblim".
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string inputString

// A string consisting of lowercase English letters and the characters ( and ). It is guaranteed that all parentheses in inputString form a regular bracket sequence.

// Guaranteed constraints:
// 0 ≤ inputString.length ≤ 50.

// [output] string

// Return inputString, with all the characters that were in parentheses reversed.

String reverseInParentheses(String inputString) {
  if (inputString.isEmpty) {
    return inputString;
  }
  List<List<String>> floors = [[]];
  int index = 0;
  List<String> input = inputString.split('');

  for (int i = 0; i < input.length; i++) {
    if (input[i] == "(") {
      index++;
      floors.add([]);
    } else if (input[i] == ")") {
      final ls = floors[index].reversed;
      floors.removeAt(index);
      index -= 1;
      floors[index].addAll(ls);
    } else {
      floors[index].add(input[i]);
    }
  }

  return floors[0].join();
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<