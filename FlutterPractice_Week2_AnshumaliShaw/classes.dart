/*
  This Program is a Simple Implementation of Classes and Objects

*/

import 'dart:io';

//Declaration of classes
class Teacher
{
  String teacher_name;            //Declaring data members of the class
  int teacher_id, year_of_study;

  Teacher(String teacher_name,int teacher_id, int year_of_study)    //Declaring the constructor
  {
    this.teacher_name=teacher_name;
    this.teacher_id=teacher_id;
    this.year_of_study=year_of_study;
  }

  void display()    //method display of the class for displaying the values
  {
    print("The name of the teacher is $teacher_name");
    print("The id of the teacher is $teacher_id");
    print("My year of study is $year_of_study");
  }
}

void main()
{
  Teacher t1=new Teacher("Amit", 2013, 3);  //Creating an object "t1" of the class
  t1.display();                             //Invoking the method display of the class Teacher
}