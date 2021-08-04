// You are implementing your own HTML editor. To make it more comfortable for developers you would like to add an auto-completion feature to it.

// Given the starting HTML tag, find the appropriate end tag which your editor should propose.

// If you are not familiar with HTML, consult with this note.

// Example

// For startTag = "<button type='button' disabled>", the output should be
// htmlEndTagByStartTag(startTag) = "</button>";
// For startTag = "<i>", the output should be
// htmlEndTagByStartTag(startTag) = "</i>".
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string startTag

// Guaranteed constraints:
// 3 ≤ startTag.length ≤ 75.

// [output] string

String htmlEndTagByStartTag(String startTag) {
  List<String> lst = startTag.split('');
  int index = 0;

  for (int i = 0; i < lst.length; i++) {
    if (lst[i] == ">" || lst[i] == " ") {
      index = i;
      break;
    }
  }

  String str = startTag.substring(1, index);
  return '</$str>';
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<