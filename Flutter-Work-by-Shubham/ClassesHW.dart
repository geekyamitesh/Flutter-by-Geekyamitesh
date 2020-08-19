class Student {
  int id, teacher_id;
  String name, teacher_name;
  Student(this.id, this.name, this.teacher_id, this.teacher_name) {}
  void study() {
    print("Student $name is studying from $teacher_name.");
  }
}

main() {
  var stud1 = Student(1, "Shubham", 01, "Amitesh");
  print("Student id is ${stud1.id} and name is ${stud1.name}.");
  stud1.study();
  var stud2 = Student(2, "Vishwajeet", 02, "Amitesh");
  print("Student id is ${stud2.id} and name is ${stud2.name}.");
  stud2.study();
}
