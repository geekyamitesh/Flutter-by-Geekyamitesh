class Employee {
  var name;
  var id;
  var year;
  Employee({this.name, this.id, this.year});
}

main() {
  var em = new Employee();
  em.name = 'Amitesh';
  em.id = 1740;
  em.year = 1999;
  print(em.name);
  print(em.id);
  print(em.year);
}
