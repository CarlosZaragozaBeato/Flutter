void main() {
  //* creating a list
  var programmingLanguages = ['dart', 'python', 'java', 'go'];
  var number = <int>[];
  print(programmingLanguages.runtimeType);
  print(number.runtimeType);

  //*printing a list of languages
  print(programmingLanguages);
  print("");
  var element = programmingLanguages[0];
  print(element);
  print(programmingLanguages[1]);
  print(programmingLanguages[2]);
  var index = programmingLanguages.indexOf('go');
  print(programmingLanguages[index]);
  programmingLanguages[0] = 'javascript';
  print(programmingLanguages[0] + ", " + element);
  programmingLanguages.add('sql');
  print(programmingLanguages[programmingLanguages.length - 1]);
  programmingLanguages.remove('sql');
  print(programmingLanguages[programmingLanguages.length - 1]);
  programmingLanguages.add('sql');
  print(programmingLanguages[programmingLanguages.length - 1]);
  programmingLanguages.removeAt(programmingLanguages.length - 1);
  print(programmingLanguages[programmingLanguages.length - 1]);

  //* muttable and inmuttable list
  final frameWorks = ['flutter, django', 'flask'];
  print(frameWorks);
  frameWorks.removeAt(1);
  frameWorks.add('react');
  print(frameWorks);
  var ides = List.unmodifiable(['vsCode', 'intellij', 'andoidStudio']);
  print(ides);
  //*ides.removeAt(1);
  print(programmingLanguages.first);
  print(programmingLanguages.last);
  print(programmingLanguages.isNotEmpty);
  print("");
  print("1");
  print("");
  //*looping over element of a list
  for (var language in programmingLanguages) {
    print(language);
  }
  print("");
  print("2");
  print("");
  programmingLanguages.forEach((element) {
    print(element);
  });
  print("");
  //*tear off
  print("3");
  print("");
  programmingLanguages.forEach(print);
  print("");

  //* Spread Operator

  var developmentTools = ['computer', ...programmingLanguages, ...frameWorks];

  print(developmentTools);
  print("");

  //* null spread operator

  List? firstList;
  var secondList = ['one', ...?firstList];
  print(secondList);

  //*Collection if
  var myFavoriteLanguages = [
    'javascript',
    'dart',
    if (programmingLanguages.contains('java')) 'java'
  ];
  print(myFavoriteLanguages);

  //*Collection for

  var upperCaseFrameworks = [
    for (var framework in frameWorks) framework.toUpperCase()
  ];
  print(upperCaseFrameworks);
}
