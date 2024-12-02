class Client {
  int _id = 0;
  String _name = "";
  double _accountBalance = 0;

  Client({int id = 0, String name = "", double accountBalance = 0})
      : assert(accountBalance >= 0),
        _id = id,
        _name = name,
        _accountBalance = accountBalance;

  @override
  String toString() {
    return 'id: $_id \nname: $_name\naccountBalance: $_accountBalance';
  }
}
