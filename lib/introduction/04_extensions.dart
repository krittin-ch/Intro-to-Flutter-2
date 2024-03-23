class Cat {
  final String name;
  Cat(this.name);
}

class Person {
  final String firstName;
  final String lastName;
  Person(this.firstName, this.lastName);
}

extension FullName on Person {

  String get fullName => '$firstName $lastName'; // Create new instance variable (getter method)

  // // Generate fullname
  // String fullName() {
  //   return '$firstName $lastName';
  // }
}

// extend the 'Cat' class with a new functionality called 'Run'
extension Run on Cat { // 'Run' is an extension not a function
  // Can include or exclude some specific function from the extended class (Cat)
  void run() {
  print('Cat is running');
  }
}


void test4() {
  final meow = Cat('Fluffers'); // Craete an instance name 'meow'
  print(meow.name);
  meow.run();

  final person1 = Person('Tin', 'Namwan');
  print(person1.fullName);
}