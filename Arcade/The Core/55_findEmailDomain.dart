// An email address such as "John.Smith@example.com" is made up of a local part ("John.Smith"), an "@" symbol, then a domain part ("example.com").

// The domain name part of an email address may only consist of letters, digits, hyphens and dots. The local part, however, also allows a lot of different special characters. Here you can look at several examples of correct and incorrect email addresses.

// Given a valid email address, find its domain part.

// Example

// For address = "prettyandsimple@example.com", the output should be
// findEmailDomain(address) = "example.com";
// For address = "fully-qualified-domain@codesignal.com", the output should be
// findEmailDomain(address) = "codesignal.com".
// Input/Output

// [execution time limit] 4 seconds (dart)

// [input] string address

// Guaranteed constraints:
// 10 ≤ address.length ≤ 50.

// [output] string

String findEmailDomain(String address) {
  List<String> lst = address.split('');

  int index = 0;

  for (int i = 0; i < lst.length; i++) {
    if (lst[i] == "@") {
      index = i;
    }
  }
  String str = address.substring(index + 1);

  return str;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<