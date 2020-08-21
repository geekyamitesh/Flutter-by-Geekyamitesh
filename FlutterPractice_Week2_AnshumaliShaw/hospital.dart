/*
  This Program is a Simple Implementation of Classes and Objects

*/

import 'dart:io';

//Declaration of classes
class Hospital
{
  String patient_name,type_of_disease, medicine_subscribed;            //Declaring data members of the class
  int patient_id;

  Hospital(String patient_name,String type_of_disease, String medicine_subscribed, int patient_id)    //Declaring the constructor
  {
    this.patient_name=patient_name;
    this.type_of_disease=type_of_disease;
    this.medicine_subscribed=medicine_subscribed;
    this.patient_id=patient_id;
  }

  void display()    //method display of the class for displaying the values
  {
    print("The id of the patient is $patient_id");
    print("The name of the patient is $patient_name");
    print("The disease he is suffering from:-  $type_of_disease");
    print("The medicine prescribed to him:-  $medicine_subscribed");
  }
}

void main()
{
  List<Hospital> l1=List<Hospital>.filled(100,Hospital("xxx", "xxx", "xxx",-1), growable: true);
  print("Enter the number of patients you want to store");
  int no_of_patients= int.parse(stdin.readLineSync());
  for(int i = 0;i< no_of_patients;i++)
  {
    print("Enter the name of {$i} patient :-");
    String pname=stdin.readLineSync();
    print("Enter the id of {$i} patient :-");
    int pid=int.parse(stdin.readLineSync());
    print("Enter the type of disease of {$i} patient :-");
    String pd=stdin.readLineSync();
    print("Enter the medicine subscribed to the {$i} patient :-");
    String pms=stdin.readLineSync();
    l1[i]=new Hospital(pname,pd,pms,pid);
  } 
  print("The details of all the patient is :- ");
  for(int i=0;i<=no_of_patients;i++)
  {
    print("\nThe details of patient $i is :- ");
    l1[i].display();
  }

}