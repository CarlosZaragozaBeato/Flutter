int phoneNumber = 123456;

isEvenOrOdd(int num1) {
  if (num1 % 2 == 0) {
    return "the number $num1 is even";
  } else {
    return "the number $num1 is odd";
  }
}

void main() {
  print(isEvenOrOdd(phoneNumber));

  String? name;
  name = 'Carlao';
  print(name);
}
