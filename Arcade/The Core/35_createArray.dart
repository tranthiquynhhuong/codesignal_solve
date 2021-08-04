// Given an integer size, return array of length size filled with 1s.

// Example

// For size = 4, the output should be
// createArray(size) = [1, 1, 1, 1].

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer size

// A positive integer.

// Guaranteed constraints:
// 1 ≤ size ≤ 1000.

// [output] array.integer

List<int> createArray(int size) {
  List<int> a = [];
  for (int i = 0; i < size; i++) {
    a.add(1);
  }
  return a;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.< 