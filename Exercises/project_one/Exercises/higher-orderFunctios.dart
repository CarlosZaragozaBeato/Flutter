void main() {
  //*mapping over a collection
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  var triple = numbers.map((e) => e * 3);
  print(triple.toList());

  //*filtering a collection

  final evens = numbers.map((e) => {
        if (e % 2 == 0) {e}
      });
  print(evens);

  //*Consolidating a collection
  //*Reduce the collection
  const amount = [199, 299, 399, 499];
  final total = amount.reduce((sum, element) => sum + element);
  print(total);

  //* using fold
  const amount2 = [199, 299, 399, 499];
  final total2 = amount2.fold(0, (int sum, element) => sum + element);
  print(total2);

  //*sorting a list
  final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  desserts.sort();
  print(desserts);

  //*Combining higher order methods
  final bigTallDessert = desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());
  print(bigTallDessert);
}
