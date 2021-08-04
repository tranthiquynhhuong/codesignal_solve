// Given array of integers, remove each kth element from it.

// Example

// For inputArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] and k = 3, the output should be
// extractEachKth(inputArray, k) = [1, 2, 4, 5, 7, 8, 10].

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] array.integer inputArray

// Guaranteed constraints:
// 5 ≤ inputArray.length ≤ 15,
// -20 ≤ inputArray[i] ≤ 20.

// [input] integer k

// Guaranteed constraints:
// 1 ≤ k ≤ 10.

// [output] array.integer

// inputArray without elements k - 1, 2k - 1, 3k - 1 etc.

List<int> extractEachKth(List<int> inputArray, int k) {
  List<int> lstIndex = [];
  int c = 1;
  for (int i = 0; i < inputArray.length; i++) {
    if (i == (k * c - 1)) {
      c++;
      lstIndex.add(i);
    }
  }

  List<int> lstReturn = [];

  for (int i = 0; i < inputArray.length; i++) {
    if (lstIndex.contains(i) == false) {
      lstReturn.add(inputArray[i]);
    }
  }

  return lstReturn;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<