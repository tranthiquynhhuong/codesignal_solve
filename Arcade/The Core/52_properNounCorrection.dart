// Proper nouns always begin with a capital letter, followed by small letters.

// Correct a given proper noun so that it fits this statement.

// Example

// For noun = "pARiS", the output should be
// properNounCorrection(noun) = "Paris";
// For noun = "John", the output should be
// properNounCorrection(noun) = "John".
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string noun

// A string representing a proper noun with a mix of capital and small English letters.

// Guaranteed constraints:
// 1 ≤ noun.length ≤ 10.

// [output] string

// Corrected (if needed) noun.

String properNounCorrection(String noun) {
  RegExp regUp = new RegExp(r'A-Z');

  if (noun.length == 1) {
    return regUp.hasMatch(noun) ? noun : noun.toUpperCase();
  }

  List<String> lst = noun.split('');
  for (int i = 0; i < lst.length; i++) {
    if (i == 0) {
      lst[i] = lst[i].toUpperCase();
    } else {
      lst[i] = lst[i].toLowerCase();
    }
  }

  return lst.join();
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<