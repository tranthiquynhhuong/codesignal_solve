// Given an array of integers, find the maximal absolute difference between any two of its adjacent elements.

// Example

// For inputArray = [2, 4, 1, 0], the output should be
// arrayMaximalAdjacentDifference(inputArray) = 3.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] array.integer inputArray

// Guaranteed constraints:
// 3 ≤ inputArray.length ≤ 10,
// -15 ≤ inputArray[i] ≤ 15.

// [output] integer

// The maximal absolute difference.

int arrayMaximalAdjacentDifference(List<int> inputArray) {
  int max = (inputArray[0] - inputArray[1]).abs();

  for (int i = 1; i < inputArray.length - 1; i++) {
    if ((inputArray[i + 1] - inputArray[i]).abs() > max) {
      max = (inputArray[i + 1] - inputArray[i]).abs();
    }
  }
  return max;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<