/*
  This Program is a Simple Implementation of taking out an area of a circle using function

*/

import 'dart:io';
void main()
{
  print(areacirc()); //calling function with no parameters
}

//Function Defination
double areacirc()
{
  double radius = double.parse(stdin.readLineSync()); //Taking user input
  return 3.14*radius*radius ;
}