// You are given an array of desired filenames in the order of their creation. Since two files cannot have equal names, the one which comes later will have an addition to its name in a form of (k), where k is the smallest positive integer such that the obtained name is not used yet.

// Return an array of names that will be given to the files.

// Example

// For names = ["doc", "doc", "image", "doc(1)", "doc"], the output should be
// fileNaming(names) = ["doc", "doc(1)", "image", "doc(1)(1)", "doc(2)"].

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] array.string names

// Guaranteed constraints:
// 5 ≤ names.length ≤ 1000,
// 1 ≤ names[i].length ≤ 15.

// [output] array.string

List<String> fileNaming(List<String> names) {
  List<String> lstUpdate = [];

  // List<String> tmp = names.where((e) => e.contains("name(1)")).toList();
  // print(tmp);
  String newName = "";

  for (int i = 0; i < names.length; i++) {
    if (lstUpdate.contains(names[i]) == false) {
      lstUpdate.add(names[i]);
    } else {
      int k = 1;
      do {
        newName = lstUpdate[lstUpdate.indexOf(names[i])] + "($k)";
        k++;
      } while (lstUpdate.contains(newName));

      lstUpdate.add(newName);
      newName = "";
    }
  }
  return lstUpdate;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<