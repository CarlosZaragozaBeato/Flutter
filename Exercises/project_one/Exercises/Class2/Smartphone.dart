class SmarthPhone {
  final String brand;
  final double price;

  const SmarthPhone({this.brand = "", this.price = 0});

  @override
  String toString() {
    return 'brand: $brand\nprice: $price';
  }
}

void main() {
  var phone = new SmarthPhone(brand: 'Samsung', price: 300);
  print(phone);
}
