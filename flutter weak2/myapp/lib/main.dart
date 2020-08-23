import 'package:flutter/material.dart';

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
      body: Center(
        child: Text(
          'Flutter Team is great team',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('clcik'),
        backgroundColor: Colors.blueGrey[700],
      ),
    );
  }
}
