// Two arrays are called similar if one can be obtained from another by swapping at most one pair of elements in one of the arrays.

// Given two arrays a and b, check whether they are similar.

// Example

// For a = [1, 2, 3] and b = [1, 2, 3], the output should be
// areSimilar(a, b) = true.

// The arrays are equal, no need to swap any elements.

// For a = [1, 2, 3] and b = [2, 1, 3], the output should be
// areSimilar(a, b) = true.

// We can obtain b from a by swapping 2 and 1 in b.

// For a = [1, 2, 2] and b = [2, 1, 1], the output should be
// areSimilar(a, b) = false.

// Any swap of any two elements either in a or in b won't make a and b equal.

bool areSimilar(List<int> a, List<int> b) {
  List<int> d = [];

  for (int i = 0; i < a.length; i++) {
    if (a[i] != b[i]) {
      d.add(i);
      if (d.length > 2) {
        return false;
      }
    }
  }

  if (d.length == 1) {
    return false;
  }

   if (d.length == 0) {
    return true;
  }

  if (a[d[0]] == b[d[1]] && a[d[1]] == b[d[0]]) {
    return true;
  }
  return false;
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<