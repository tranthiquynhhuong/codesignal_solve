// Reverse the order of the bits in a given integer.

// Example

// For a = 97, the output should be
// mirrorBits(a) = 67.

// 97 equals to 1100001 in binary, which is 1000011 after mirroring, and that is 67 in base 10.

// For a = 8, the output should be
// mirrorBits(a) = 1.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer a

// Guaranteed constraints:
// 5 ≤ a ≤ 105.

// [output] integer

int mirrorBits(int a) {
  String b = a.toRadixString(2).split('').reversed.join();
  print(b);
  return int.parse(b, radix: 2);
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<