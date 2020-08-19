/*
// String
var num = 'amit';
//rawstring
var num1 = r'I am super hero';
// String interpulation
*/
/*
void main() {
  var age = 30;
  var str = "My age is $age";//string interpulation 
  print(str);
}
*/
// Type cob=version in dart
// parse & assert
//string into int
/*
void main() {
  String p1 = 3.145889998878.toStringAsFixed(2);
  print(p1);
}
*/
/*
void main() {
  // For loop (intilial, condition, expression)
  print('Flutter Class');
  for (int c1 = 1; c1 <= 5; c1++) {
    print(c1);
  }



    var ctr =1;
    var maxCtr =5;
    print("hello ravi");
    //
    while(ctr<=maxCtr){      
        print(ctr);
        ctr = ctr+1;
    }



    var ct =1;
    var max1 =5;
    
    do{      
        print("Hello World! Value is :${ct}");  
        ct = ct+1;
    }while(ct<=max1);

}
import 'dart:io';

void main() {
  stdout.write("Enter number in string: ");
  var numb = stdin.readLineSync();
  var Fnumb = double.parse(numb);
  stdout.write("String to float is $Fnumb");

  print(Fnumb);
}

*/
/*
Type Casting Examples
1.String to int
2.String to double
3.int to String
4.double to String
import 'dart:io';

main() {
// String to int
  var one = int.parse('7');
  assert(one == 7);
  print(one);

  // String to double
  var onePointOne = double.parse('1.67');
  print(onePointOne); 

  // int to String
  String x = 20.toString();
  print(x);

  // double to String
  String pi = 3.14316.toStringAsFixed(2);
  print(pi);
  // importing dart:io file

  print("Enter your name?");
  // Reading name of the Geek
  String name = stdin.readLineSync();

  // Printing the name
  print("Hello, $name! \nWelcome to GirlScript Foundation!!");
}
*/

//Function in a dart
// Dart funtionsyntax with parameters
/*
 return_type fun_nam(parmeter_list){
   //statment(s)
   retun value:
 }

 int square(int n1){
   int s;
   s= n1*n1;
   return(s);
 }

 // Calling funtion in Dart
 normal syntax
 fun_nam(<argument_list>);

 square(10);


void main() {
  int s = square(10);
  //calling function square
  print(s);
}

int square(int s) {
  return s * s;
}
*/

// Dart Anonymous

// In a dart , We have seen many function that have names with full syntax. But we can also create namelesss function known as anonymouys e.g Lambda and closure
/*

1. An anonmoys function can have zero or more parameters
2. We can also put constant or variable .

syntax:-
(parameter-list){
  statement.....
}


void main() {
  var list = ['amit', 10, 10.34];
//untyped parameter ,item,the function ,invoked for each item in the list ,print a tring the values at the specific position
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });
}
*/
// Dart classes

// In a dart, Classes is a blue-print of objects.
//Class is a wrapper that binds/encapulates the data and methods together

// Declaring a class in dart
//Syntax:
/*
class ClassName{
   <function>
   <constructors>
   <fields>

}
class Flutter{
  var stude_name;
  var stude_marks;
//method
// it is a simple functions that prints the value of classfields
showStudenInfo(){
  print("name is  $stude_name");
}
}
 //creating object in dart

 In a dart ,Object of a class can be created using new keywords

 var objectName = new ClassName(<constructor_argements>);

 var stu = new Flutter();

 //Instance Variable and Functions


class Flutter1 {
  var stud_name;
  var stud_marks;
  //method of class
  showData() {
    print('name is $stud_name');
    print('marks is $stud_marks');
  }
}

void main() {
  var std = new Flutter1();
  std.stud_name = 'adnam';
  std.stud_marks = '86';
  std.showData();
}

*/
class P1 {
  //constructor body
  P1() {
    print("This is second weak of flutter classses");
  }
}

void main() {
  // constructor call
  P1 std = new P1();
  print(std);
}
