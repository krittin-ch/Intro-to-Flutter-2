
// Enumerate
enum AnimalType { // Create enumeration
  cat, dog, bunny
}

// Introduction
void test1() {
  List<String?>? names = ['Foo', 'Bar', null];
  // List of string of names.
  // names can sometimes be null (names = null)
  // or name (element of names) cam be null (names[2] = null)

  const String? firstName = 'Namwan';
  const String? middleName = 'Krittin';
  const String? lastName = 'Tin';

  final firstNonNullValue = firstName ?? middleName ?? lastName;
  // A ?? B --> If A is null then pick B

  String? name = firstName; // name is firstName
  name ??= lastName; // If firstName is null, then assign name as lastName
  name ??= middleName; // If lastName is null, then assign name as  middleName

  final len = names?.length ?? 0; // If names is null, return 0 (names.length --> names cannot be null)

  AnimalType animalType = AnimalType.bunny;
  switch (animalType)  { // switch-case statement
    case AnimalType.cat:
    // print('Cat');
      return; // return --> end the function and return some value
    case AnimalType.dog:
    // print('Dog');
      return;
    case AnimalType.bunny:
    // print('Bunny');
      break; // break --> end (only) switch and continue the code
  }
  // print('Finish');
}