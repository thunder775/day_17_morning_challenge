// Challenge 1
// Write failing test cases for the next two challenges

// Challenge 2
// All Pairs that Sum to Target
// Create a function that returns all pairs of numbers in an list that sum to a target.
// Sort the pairs in ascending order with respect to the smaller number,
// then order each pair in this order: [smaller, larger].
// Examples
// allPairs([2, 4, 5, 3], 7) ➞ [[2, 5], [3, 4]]
/// 2 + 5 = 7, 3 + 4 = 7

List allPairs(List<int> list, int target) {
  List temp = [];
  List result = [];
  List pairs = [];
  for (int x in list) {
    for (int y in list) {
      if (x + y == target) {
        pairs.add(x);
        pairs.add(y);
        pairs.sort();

        result.add(pairs);

        pairs = [];
        break;
      }
    }
  }
    result = result.toSet().toList();
    return result;

}

bool equalityChecker(List a, List b) {
  for (int i = 0; i < a.length; i++) {
    if (a[i] != b[i]) {
      return false;
    }
  }
  return true;
}

// Challenge 3
// Almost Sorted Sequence
// An almost-sorted sequence is a sequence that is strictly increasing
// if you remove a single element from the list
// (no more, no less). Write a function that returns true if an list is almost-sorted,
// and false otherwise.
/// For example, if you remove 80 from the first example,
/// it is perfectly sorted in ascending order.
// Examples
// almostSorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41] ) ➞ true

bool almostSorted(List list) {
  int count = 0;
  for (int i = 0; i < list.length - 1; i++) {
    if (list[i + 1] < list[i]) count++;
    print(count);
  }
  return count == 1;
}

main() {
  allPairs([2, 4, 5, 3], 7);
  print(almostSorted([1, 3, 5, 9, 11, 80, 15, 81]));
}
