// Async and Await

// 'async' for asynchronous execution
// 'await' for waiting until the

import 'package:intro_to_flutter_2/introduction/05_future.dart';

void test6() async {

  final result1 = heavyFutureThatMultiplyByTwo(10);
  print(result1); // Instance of 'Future<int>'

  final result2 = await heavyFutureThatMultiplyByTwo(10);
  print(result2); // 20
}