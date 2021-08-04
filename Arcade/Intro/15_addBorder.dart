
// Given a rectangular matrix of characters, add a border of asterisks(*) to it.

// Example

// For

// picture = ["abc",
//            "ded"]
// the output should be

// addBorder(picture) = ["*****",
//                       "*abc*",
//                       "*ded*",
//                       "*****"]
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] array.string picture

// A non-empty array of non-empty equal-length strings.

// Guaranteed constraints:
// 1 ≤ picture.length ≤ 100,
// 1 ≤ picture[i].length ≤ 100.

// [output] array.string

// The same matrix of characters, framed with a border of asterisks of width 1.

List<String> addBorder(List<String> picture) {
  final int w = picture[0].length + 2;
  final int h = picture.length + 2;

  for (int i = 0; i < h; i++) {
    print('w: $w - h: $h');
    if (i == 0 || i == h - 1) {
 String border = "";
      for (int j = 0; j < w; j++) {
        border = border + '*';
      }      picture.insert(i, border);
    } else {
      String border = '*' + picture[i] + '*';
      picture[i] = border;
    }
  }
  return picture;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<