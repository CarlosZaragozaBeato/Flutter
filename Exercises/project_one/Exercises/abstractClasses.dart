abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return 'I am a $runtimeType';
  }
}

class Duck extends Animal {
  @override
  void eat() {
    print('duck eats');
  }

  @override
  void move() {
    print('duck moves');
  }

  void layEggs() {
    print('Duck lay eggs');
  }
}

void main() {
  var dk = Duck();
  print(dk.isAlive);
  dk.eat();
  dk.move();
  dk.layEggs();
  print(dk);
}
