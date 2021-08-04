// A little boy is studying arithmetic. He has just learned how to add two integers, written one below another, column by column. But he always forgets about the important part - carrying.

// Given two integers, your task is to find the result which the little boy will get.

// Note: The boy had learned from this site, so feel free to check it out too if you are not familiar with column addition.

// Example

// For param1 = 456 and param2 = 1734, the output should be
// additionWithoutCarrying(param1, param2) = 1180.

//    456
//   1734
// + ____
//   1180
// The boy performs the following operations from right to left:

// 6 + 4 = 10 but he forgets about carrying the 1 and just writes down the 0 in the last column
// 5 + 3 = 8
// 4 + 7 = 11 but he forgets about the leading 1 and just writes down 1 under 4 and 7.
// There is no digit in the first number corresponding to the leading digit of the second one, so the boy imagines that 0 is written before 456. Thus, he gets 0 + 1 = 1.
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer param1

// A non-negative integer.

// Guaranteed constraints:
// 0 ≤ param1 < 105.

// [input] integer param2

// A non-negative integer.

// Guaranteed constraints:
// 0 ≤ param2 < 6 · 104.

// [output] integer

// The result that the little boy will get by using column addition without carrying.

int additionWithoutCarrying(int param1, int param2) {
  List<int> re = [];
  List<int> p1 = param1.toString().split('').reversed.map(int.parse).toList();
  List<int> p2 = param2.toString().split('').reversed.map(int.parse).toList();

  if (p1.length < p2.length) {
    for (int i = 0; i < p2.length; i++) {
      int a = 0;
      if (i < p1.length) {
        a = int.parse((p1[i] + p2[i]).toString().split('').last);
      } else {
        a = p2[i];
      }
      re.add(a);
    }
  } else if (p1.length > p2.length) {
    for (int i = 0; i < p1.length; i++) {
      int a = 0;
      if (i < p2.length) {
        a = int.parse((p1[i] + p2[i]).toString().split('').last);
      } else {
        a = p1[i];
      }
      re.add(a);
    }
  } else {
    for (int i = 0; i < p2.length; i++) {
      re.add(int.parse((p1[i] + p2[i]).toString().split('').last));
    }
  }

  return int.parse(re.reversed.join());
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.< 