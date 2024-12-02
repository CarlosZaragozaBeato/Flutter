class Student {
  int id = 0;
  String name = '';
  static String collage = 'Bangalore University';

  Student(this.id, this.name);

  void DisplayDefaultValues() {
    print('id:$id\nname:$name\ncollege:$collage');
  }
}

void main() {
  var musico = new Student(1, 'Musico');
  musico.DisplayDefaultValues();
}
