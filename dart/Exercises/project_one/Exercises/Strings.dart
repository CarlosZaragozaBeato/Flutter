void main() {
//*Concatenation
  var first = 'one';
  var second = 'second';
  var third = 'thir dddddd';

  var fourth = first + " " + second + third;
  var fifth = "fifth";
  fifth += fourth;
  print(fifth);
//*Interpolation

  var name = 'Carlos';
  print('My name is $name');

  var age = 2022 - 1999;
  print("My age is $age");

//*Multi-line Strings
  var longText = """
  Hello
  asasdasd
  DebugShadersas
  da
  sda
  sd
  asd
  """
      "";
  print(longText);
  var uppercarseText = longText.toUpperCase();
  print(uppercarseText);
}
