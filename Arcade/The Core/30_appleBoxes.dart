// You have k apple boxes full of apples. Each square box of size m contains m × m apples. You just noticed two interesting properties about the boxes:

// The smallest box is size 1, the next one is size 2,..., all the way up to size k.
// Boxes that have an odd size contain only yellow apples. Boxes that have an even size contain only red apples.
// Your task is to calculate the difference between the number of red apples and the number of yellow apples.

// Example

// For k = 5, the output should be
// appleBoxes(k) = -15.

// There are 1 + 3 * 3 + 5 * 5 = 35 yellow apples and 2 * 2 + 4 * 4 = 20 red apples, making the answer 20 - 35 = -15.

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] integer k

// A positive integer.

// Guaranteed constraints:
// 1 ≤ k ≤ 40.

// [output] integer

// The difference between the two types of apples.

int appleBoxes(int k) {
  int box = 1;
  int yellow = 0;
  int red = 0;

  while (box <= k) {
    if (box % 2 == 0) {
      red = red + (box * box);
    } else {
      yellow = yellow + (box * box);
    }
    box++;
  }

  return red - yellow;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.< 
