// You are given an array of integers representing coordinates of obstacles situated on a straight line.

// Assume that you are jumping from the point with coordinate 0 to the right. You are allowed only to make jumps of the same length represented by some integer.

// Find the minimal length of the jump enough to avoid all the obstacles.

// Example

// For inputArray = [5, 3, 6, 7, 9], the output should be
// avoidObstacles(inputArray) = 4.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] array.integer inputArray

// Non-empty array of positive integers.

// Guaranteed constraints:
// 2 ≤ inputArray.length ≤ 1000,
// 1 ≤ inputArray[i] ≤ 1000.

// [output] integer

// The desired length.

int avoidObstacles(List<int> inputArray) {
  inputArray.sort();

  for (int i = 2; i < inputArray.last; i++) {
    bool isBreak = false;
    for (int j = 0; j < inputArray.length; j++) {
      if (inputArray[j] % i == 0) {
        isBreak = true;
        break;
      }
    }

    if (!isBreak) {
      return i;
    }
  }

  return inputArray.last + 1;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<