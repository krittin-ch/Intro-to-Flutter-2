// 'Generics' to avoid re-writing similar code

// // Normal class
// class Pair {
//   final String value1;
//   final String value2;
//   Pair(this.value1, this.value2);
// }

// // Define a class with the same name is illegal
// class Pair {
//   final String value1;
//   final String value2;
//   Pair(this.value1, this.value2);
// }

// No need to create the same class structure like below
class PairOfStrings {
  final String value1;
  final String value2;
  PairOfStrings(this.value1, this.value2);
}

class PairOfIntegers {
  final int value1;
  final int value2;
  PairOfIntegers(this.value1, this.value2);
}

// Create a class in a form of 'Generic'
// A and B are any data types
class Pair<A, B> {
  final A value1;
  final B value2;
  Pair(this.value1, this.value2);
}

void test9() {
  final names = Pair('foo', 20);
  print(names.value1);
}