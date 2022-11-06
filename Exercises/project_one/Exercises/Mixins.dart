abstract class Bird {}

abstract class Reptile {}

class HummingBird extends Bird with Flyer, EggLayer {
  @override
  String toString() {
    var fly2 = fly();
    var egg = layEggs();
    return '$runtimeType $fly2 $egg';
  }
}

class Penguin extends Bird with EggLayer {
  @override
  String toString() {
    var egg = layEggs();
    return '$runtimeType  $egg';
  }
}

class Snake extends Reptile with EggLayer {
  @override
  String toString() {
    var egg = layEggs();
    return '$runtimeType  $egg';
  }
}

mixin Flyer {
  String fly() => 'flies';
}
mixin EggLayer {
  String layEggs() => 'lay eggs';
}

void main() {
  var hummingBirds = HummingBird();
  print(hummingBirds);
  var penguin = Penguin();
  print(penguin);

  var snake = Snake();
  print(snake);
}
