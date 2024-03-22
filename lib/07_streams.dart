// stream is a pipe of data that either it complete successfully or it never complete or it error and die
// stream is the future data that is sent down the pipe that is never end (continue working)

Stream<String> getName() {
  // return 'hello'; // 'hello' is the synchronous value (it's always present)

  // Create the stream value of 'Foo'
  // return Stream.value('Foo');

  return Stream.periodic(const Duration(seconds: 1), (value) {
    return 'Foo';
  });
}

void test7() async {
  final value1 = getName();
  print(value1); // Instance of '_ControllerStream<String>'

  await for (final value2 in getName()) {
    print(value2); // Foo
  // // Below method cannot use with stream because stream never end
  // final value3 = await getName();
  // print(value3); // Instance of '_ControllerStream<String>'
  }
}