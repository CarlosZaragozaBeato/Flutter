void main() {
  //*creating a set
  final Set<String> language = {};
  var numbers = <int>{};
  var prices = {3.2, 1, 1, 1, 4, 6};

  print(prices);

  //*Check content of a set
  print(prices.contains(6));
  prices.remove(6);
  print(prices);
  prices.add(6);
  print(prices);
  prices.addAll([9, 10, 11]);
  print(prices);

  //* intersection - union

  var prices2 = {9, 10, 11, 47, 56, 215, 888};
  print(prices2.intersection(prices));
  print(prices.union(prices2));
}
