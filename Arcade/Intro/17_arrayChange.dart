// You are given an array of integers. On each move you are allowed to increase exactly one of its element by one. Find the minimal number of moves required to obtain a strictly increasing sequence from the input.

// Example

// For inputArray = [1, 1, 1], the output should be
// arrayChange(inputArray) = 3.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] array.integer inputArray

// Guaranteed constraints:
// 3 ≤ inputArray.length ≤ 105,
// -105 ≤ inputArray[i] ≤ 105.

// [output] integer

// The minimal number of moves needed to obtain a strictly increasing sequence from inputArray.
// It's guaranteed that for the given test cases the answer always fits signed 32-bit integer type.

int arrayChange(List<int> inputArray) {
  int delta = 0;

  for (int i = 1; i < inputArray.length; i++) {
    if (inputArray[i] < inputArray[i - 1]) {
      delta = delta + (inputArray[i - 1] - inputArray[i] + 1);

      inputArray[i] = inputArray[i] + (inputArray[i - 1] - inputArray[i] + 1);
    } else if (inputArray[i] == inputArray[i - 1]) {
      inputArray[i] = inputArray[i] + 1;
      delta = delta + 1;
    }
  }

  return delta;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<