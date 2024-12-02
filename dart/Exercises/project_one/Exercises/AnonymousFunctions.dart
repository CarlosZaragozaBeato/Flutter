void main() {
  doSomething(() {
    return "hello";
  });
  var triple = applyMultiplier(3);
  print('The triple of 3 is ${triple(3)}');

  const values = [2, 3, 4, 5];

  values.forEach((value) {
    print('the double of $value is ${value * 2}');
  });
}

Function add = (int a, int b) {
  return a + b;
};

void doSomething(Function callback) {
  print(callback.call());
}

Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}
