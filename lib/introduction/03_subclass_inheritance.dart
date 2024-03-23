// Inheritance and Subclassing
class LivingThing {
  void breathe() {
    print('Living thing is breathing');
  }

  void move() {
    print('Living thing is moving');
  }
}

// Class inheritance
class Dog extends LivingThing {}

class Cat {
  final String name;
  Cat(this.name);

  factory Cat.fluffBall() {
    return Cat('Fluff Ball');
  }

  // To set any operators as another function
  // bool operator (operator) (some rule) => some rule
  @override
  bool operator == (covariant Cat other) => other.name == name;

  // The numerical value to point to the instance
  // In C, it is a memory address
  // In Java, it is a reference
  @override
  int get hashCode => name.hashCode;

}

// Abstract class is the class that cannot be instantiated on its own

void test3() {
  final flutters = Dog();
  // flutters.move();

  final fluffBall = Cat.fluffBall();
  // print(fluffBall.name); // Fluff Ball
  // print(fluffBall); // Instance of 'Cat'

  Cat cat1 = Cat('Fluffy');
  Cat cat2 = Cat('Fluffy');
  Cat cat3 = Cat('Whisker');

  print(cat1 == cat2);
  print(cat1.hashCode);
}
