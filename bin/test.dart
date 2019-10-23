import 'package:test/test.dart';

import 'main.dart';

main() {
  test('allpairs', () {
    expect(allPairs([2, 4, 5, 3], 7), [
      [2, 5],
      [3, 4]
    ]);
  });
  test('almost sorted', () {
    expect(almostSorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41]), true);
  });
}
