// Generators
// 'Generators' uses sync* or async*

// 'sync*' is a generator function that return a list of things and calculate the list of things synchronously
// 'sync*' is a generator function that return a list of things and calculate the list of things asynchronously (return as a stream)

Iterable<int> getOneTwoThree() sync* {
  yield 1; // yield only use for generator function
  yield 2;
  yield 3;
  yield 4;
}

void test8() {
  for (final value in getOneTwoThree()) {
    print(value);
    if (value == 3) {
      break;
    }
    // 1
    // 2
    // 3
  }

  print(getOneTwoThree()); // (1, 2, 3, 4)
}