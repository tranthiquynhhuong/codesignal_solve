// Given an integer product, find the smallest positive (i.e. greater than 0) integer the product of whose digits is equal to product. If there is no such integer, return -1 instead.

// Example

// For product = 12, the output should be
// digitsProduct(product) = 26;
// For product = 19, the output should be
// digitsProduct(product) = -1.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer product

// Guaranteed constraints:
// 0 ≤ product ≤ 600.

// [output] integer

int digitsProduct(int product) {
  List<int> digits = [];
  if (product == 0) {
    return 10;
  }

  if (product == 1) {
    return 1;
  }
  int i = 9;

  while (i > 1) {
    if (product % i == 0) {
      digits.add(i);
      print('i: $i');
      int next = product ~/ i;
      product = next;
    } else {
      i--;
    }
  }

  if (digits.isEmpty || product != 1) {
    return -1;
  }

  return int.parse(digits.reversed.join());
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<