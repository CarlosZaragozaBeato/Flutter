void main() {
  print("While Loop");
  var i = 1;
  //*While Loop
  while (i <= 10) {
    print(i);
    i++;
  }

  print("");

  print("Do while Loop");
  //*Do-While Loop
  do {
    print(i);
    i++;
  } while (i <= 20);

  print("");

  print("Break a Loop");
  //*Break a loop
  var value = 0;
  while (value < 10) {
    print(value);
    if (value == 5) {
      break;
    }
    value++;
  }
  print("");

  print("For Loops");
  //*For loops
  for (int i = 10; i > 0; i--) {
    print(i);
  }

  print("");
  print("Continue keyword");
  //*Continue keyword
  for (var i = 0; i <= 10; i++) {
    //*Skip even numbers
    if (i % 2 == 0) {
      continue;
    }
    print(i);
  }
}
