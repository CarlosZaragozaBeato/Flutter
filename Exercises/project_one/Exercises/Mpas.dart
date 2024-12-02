void main() {
  final Map<String, int> someMap = {};
  final emptySomething = {};

  //*initializing maps
  final storeStock = {'smartphone': 23, 'computers': 2, 'books': 32};
  final digitWord = {1: 'one', 2: 'two', 3: 'three', 4: 'four'};
  print(storeStock);
  var smartphoneStock = storeStock['smartphone'];
  print(smartphoneStock);
  print("");
  //*Add elements
  storeStock['laptops'] = 7;
  print(storeStock);
  storeStock.remove('laptops');
  print(storeStock);
  print("");
  print(storeStock.containsKey('computers'));
  print(storeStock.containsValue(7));
  print("");
  //* Loops

  for (var key in storeStock.keys) {
    print(storeStock[key]);
  }
  print("");
  storeStock.forEach((key, value) => print('$key -> $value'));

  print("");

  for (final entry in storeStock.entries) {
    print('{$entry.value} {$entry.key}');
  }
}
