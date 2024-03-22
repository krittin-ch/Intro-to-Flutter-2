// 'Future' is a part of asynchronous programming
// 'Future' is data to be returned in the future

Future<int> heavyFutureThatMultiplyByTwo(int a) {
  // return 10; // 10 is the synchronous value (it's always present)

  // wait 3 seconds then call function a*2
  // method 1
  // return Future.delayed(const Duration(seconds: 3), () => a*2);

  //method 2
  return Future.delayed(const Duration(seconds: 3), () {
    return a*2;
  });
}

void test5() {
  print(heavyFutureThatMultiplyByTwo(5));
}