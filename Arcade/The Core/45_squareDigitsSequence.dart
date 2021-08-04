// Consider a sequence of numbers a0, a1, ..., an, in which an element is equal to the sum of squared digits of the previous element. The sequence ends once an element that has already been in the sequence appears again.

// Given the first element a0, find the length of the sequence.

// Example

// For a0 = 16, the output should be
// squareDigitsSequence(a0) = 9.

// Here's how elements of the sequence are constructed:

// a0 = 16
// a1 = 12 + 62 = 37
// a2 = 32 + 72 = 58
// a3 = 52 + 82 = 89
// a4 = 82 + 92 = 145
// a5 = 12 + 42 + 52 = 42
// a6 = 42 + 22 = 20
// a7 = 22 + 02 = 4
// a8 = 42 = 16, which has already occurred before (a0)
// Thus, there are 9 elements in the sequence.

// For a0 = 103, the output should be
// squareDigitsSequence(a0) = 4.

// The sequence goes as follows: 103 -> 10 -> 1 -> 1, 4 elements altogether.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer a0

// First element of a sequence, positive integer.

// Guaranteed constraints:
// 1 ≤ a0 ≤ 105.

// [output] integer

int squareDigitsSequence(int a0) {
  int sum = a0;

  List<int> t = [];

  List<int> lst = a0.toString().split('').map((e) => int.parse(e)).toList();
  print(lst);

  if (a0 == 1) {
    return 2;
  }

  while (t.contains(sum) == false && sum != 1) {
    t.add(sum);

    sum = 0;

    for (int i = 0; i < lst.length; i++) {
      num x = lst[i];
      num y = 2;
      sum = sum + pow(x, y).toInt();
    }

    lst = sum.toString().split('').map((e) => int.parse(e)).toList();

    if (sum == 1) {
      return t.length + 2;
    }
    print(t);
  }

  return t.length + 1;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.< 