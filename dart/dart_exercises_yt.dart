void main() {
  //NullSafety();
  ObjectsAndOtherTopics();
}

void NullSafety() {
  /*var Person = {
    'age': 20,
    'name': 'John',
    'gender': 'Male',
  };

  print(Person['age']);
  print(Person['name']);
  print(Person['gender']);
    
  String? name = null;
  print(name);
  if (name != null) {
    print("name is null");
  }
  name = "foo";
  print(name);

  if (name != null) {
    print("name is not null");
  }
  List<String?>? names = ['foo', 'Bar', null];
  print(names[2]);

  const String? firstName = null;
  const String? middleName = null;
  const String? lastName = "Barr";

  const firstNameNotNull = firstName ?? middleName ?? lastName;
  print(firstNameNotNull);
    List<String>? names = [];
  final numberOfNames = names.length;
  print(numberOfNames);
  */
}

enum AnimalType {
  cat,
  dog,
  bunny,
  //print(Names.FirstName.name);
}

void ObjectsAndOtherTopics() {
  // final cat = new Cat.NAME();

  // final person = Person("Carlos", 23, "Male");
// print(person.getName());
/*  final person = Person();
  person.run();
  person.breathing();*/

  /*const AnimalType valor = AnimalType.cat;
  switch (valor) {
    case AnimalType.cat:
      print("cat");
      break;
    case AnimalType.dog:
      print("dog");
      break;
    case AnimalType.bunny:
      print("bunny");
      break;
  }*/
}

/*abstract class LivingThing {
  void breathing() {
    print("Living thin is breathing");
  }

  void move() {
    print("I'm moving");
  }
}*/

/*class Cat {
  final String name;

  Cat(this.name);
  factory Cat.NAME() {
    return Cat("NAME");
  }
}*/
/*class Person {
  final String _name;
  final int _age;
  final String _gender;

  Person(this._name, this._age, this._gender);

  String getName() {
    return this._name;
  }

  int getAge() {
    return this._age;
  }

  String getGender() {
    return this._gender;
  }

  void run() {
    print("Running");
  }

  void breathing() {
    print("Breathing");
  }
}*/
