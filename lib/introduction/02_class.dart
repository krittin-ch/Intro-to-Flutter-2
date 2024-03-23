// Class
class Person {
  final String name; // "final" --> name cannot change
  Person(this.name); // Create constructor

  void sayName() {
    print("Hello $name"); // Hello with the exact name
    print("Hello $this.name"); // Hello Instance of 'Person'.name
  }
}

void test2() {
  final foo = Person('Krittin'); // Create the instant of Person class
  foo.sayName();
}
