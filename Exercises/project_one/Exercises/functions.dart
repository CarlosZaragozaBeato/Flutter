int add(int value1, int value2) {
  var result = value1 + value2;
  return result;
}

//*Optional parameters
String enterName(String firstName, [lastName]) {
  if (lastName == null) {
    return firstName;
  } else {
    return "$firstName  $lastName";
  }
}

//*Default Values
void enterProfileDetails(String name, [position = 'student']) {
  print(" Name: $name \n Position: $position");
}

//*Named Parameter
void editProfile({var newName, var newPassword}) {
  print('New name: $newName \nNew Password: $newPassword');
}

//*mixed parameters
void userDetails(String name, {position}) {
  print('Name: $name \nPosition: $position');
}

void main() {
  print(add(5, 10));
  isEvenOrOdd(452);
  print(enterName("carlao", "gaucho"));
  enterProfileDetails("Carlao", "Student");
  editProfile(newName: 'Carlao', newPassword: '123456');
  userDetails('Carlao', position: 'student');
}

void isEvenOrOdd(int value) {
  if (value % 2 == 0) {
    print("$value is even");
  } else {
    print("$value is odd");
  }
}
