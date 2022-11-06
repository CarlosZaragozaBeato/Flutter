class Student {
  int _id = 0;
  double _marks = 0;
  String _name = "";

  int get id => _id;
  double get marks => _marks;
  String get name => _name;
  bool get isStudentSmart => _marks > 80;
  Student(this._id, this._name, this._marks);

  set StudentNewName(String name) => _name = name;
}

void main() {
  var student = new Student(1, "Carlao", 82);
  print(student._id);
  print(student.name);
  print(student.marks);
  print(student.isStudentSmart);
  student.StudentNewName = "davon";
  print(student.name);
}
