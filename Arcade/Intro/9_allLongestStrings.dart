// Given an array of strings, return another array containing all of its longest strings.

// Example

// For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be
// allLongestStrings(inputArray) = ["aba", "vcd", "aba"].

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] array.string inputArray

// A non-empty array.

// Guaranteed constraints:
// 1 ≤ inputArray.length ≤ 10,
// 1 ≤ inputArray[i].length ≤ 10.

// [output] array.string

// Array of the longest strings, stored in the same order as in the inputArray.

List<String> allLongestStrings(List<String> inputArray) {
  int max = inputArray[0].length;
  List<String> lstReturn = [];
  if (inputArray.length < 2) {
    return inputArray;
  } else {
    for (int i = 0; i < inputArray.length; i++) {
      if (inputArray[i].length == max) {
        lstReturn.add(inputArray[i]);
      } else if (inputArray[i].length > max) {
        max = inputArray[i].length;
        lstReturn.add(inputArray[i]);
      }
    }
  }
  return updateLstReturn(lstReturn,max);
}

List<String> updateLstReturn(List<String> list, int max){
  List<String> lst = [];
      for (int i = 0; i < list.length; i++) {
    if (list[i].length == max) {
      lst.add(list[i]);
    }
  }
  return lst;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<