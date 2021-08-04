// Define a word as a sequence of consecutive English letters. Find the longest word from the given string.

// Example

// For text = "Ready, steady, go!", the output should be
// longestWord(text) = "steady".

// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string text

// Guaranteed constraints:
// 4 ≤ text.length ≤ 50.

// [output] string

// The longest word from text. It's guaranteed that there is a unique output.

String longestWord(String text) {
  List<String> words = text.split('');
  List<List<String>> lstWordCount = [[]];

  RegExp re = new RegExp(r'[a-zA-Z]');

  for (int i = 0; i < words.length; i++) {
    if (re.hasMatch(words[i])) {
      lstWordCount[lstWordCount.length - 1].add(words[i]);
    }
    if (i != words.length - 1 && re.hasMatch(words[i + 1]) == false) {
      lstWordCount.add([]);
    }
  }

  print(lstWordCount);
  int index =
      lstWordCount.indexOf(lstWordCount.reduce((curr, next) => curr.length > next.length ? curr : next));
  return lstWordCount[index].join();
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<