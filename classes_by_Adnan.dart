void main(){
  var student1 = Student(05, "Albert", 01, "Isaac");
  print("Student id is ${student1.id} and name is ${student1.name}.");
  student1.study();
  var student2 = Student(06, "Einstein", 02, "Newton");
  print("Student id is ${student2.id} and name is ${student2.name}.");
  student2.study();
}
class Student {
    int id;
    String name;
    int teacher_id;
    String teacher_name;
    Student(this.id, this.name, this.teacher_id, this.teacher_name){
    }
  void study() {
    print("Student $name is now studying from $teacher_name.");
  }
}

