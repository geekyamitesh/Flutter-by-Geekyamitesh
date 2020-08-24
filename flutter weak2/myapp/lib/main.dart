import 'package:flutter/material.dart';
//Date24/08/2020
// You have to make profile of your self
// This is task for all of you [name,image,university name,icon(facbook,linkdin,instagram,mail,call)]
//Today topic

//Scaffold and AppBar widgets
// Color(Background)
// stateless widget

// The run app (widget) takes a widget to run a program with different different styles

// Scaffold(AppBar, Body, Bottomnaviagtion,Floating Action Buttom)

/*
There are broadly two types of widgets in Flutter.
State-full Widgets and Stateless Widgets. The names are self-explanatory.
State-full Widgets are sensitive to what happens within its boundaries and gets rebuilt when a state change is detected. Conversely, Stateless widgets are not state sensitive and remain static throughout its life cycle.

//@override marks an instance member as overriding a superclass member with the same name. The annotation applies to instance methods, getters and setters, and to instance fields, where it means that the implicit getter and setter of the field is marked as overriding, but the field itself is no
*/
/*
Stateless Widgets:- the size of the widget cannot change overtime
stateful Widgets :- the state of the widget can change over the time

*/
/*
1. font insertion
body: Center(
        child: Text(
          'Hello Flutter Team',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
          fontFamily: 'Alata-Regular',
          ),
        ),
      ),

      pubsec.yaml :- we are changed (fonts) 
2. Image insertion  
   a. Url through [ image:NetworkImage()]
   b. local directory [image : ASSETiMAGE(''),]
3. buttoms
// We have done buttons
FlatButton(
              onPressed: () {
                print("We're in flutter room");
              },
              child: Text('Hey How are you'),
              color: Colors.lightBlue)
 // Icon on buttons

RaisedButton.icon(
              onPressed: () {
                print('Flutter fans');
              },
              icon: Icon(
                Icons.message,
                color: Colors.yellowAccent,
                size: 340,
              ),
              label: Text('Message me'),
              )

 &
Icon
a.Icon(
          Icons.access_alarms,
          color: Colors.redAccent,
          size: 450,
        )
4. container
("Container tries, in order: to honor alignment, to size itself to the child, to honor the width, height, and constraints, to expand to fit the parent, to be as small as possible.")


5. Padding&Marging
    
6. Rows
*/

/*
Date 24 August
Task 1: insertion font faimly from google font


*/
//runApp will to run the application in recent directory
void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyFamily'),
        centerTitle: true, //tille will go center
        backgroundColor: Colors.blueGrey[700],
      ),
      //Task for tommorow(text style,background color)
      body: Container(
        color: Colors.grey[30],
        child: Text("Hello Ravi!!"),
        padding: EdgeInsets.fromLTRB(30, 50, 100, 70),
        margin: EdgeInsets.all(55.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('clcik'),
        backgroundColor: Colors.blueGrey[700],
      ),
    );
  }
}
