class user {
  String? name;
  int? id;
}

void main() {
  //*If null ??
  String? name;
  String userName = name ?? 'default name';
  double? price;
  price ??= 0;

  //*null-aware access (?.)
  print(name?.length);

  //* null assertation (!)
  int? age;
  int myAge = age!;

  //*null-aware cascade(?...)
  user? User;
  User
    ?..id = 12
    ..name = 'Carlao';
}
