import 'dart:js';

import 'package:flutter/material.dart';
//home  Date24/08/2020 to 27/08
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
 clip button in container
 child: InkWell(
          onTap: () {
            setState(() {
              sideLength == 50 ? sideLength = 100 : sideLength = 50;
            });
          },
        ),
      ),
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

Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text("Flutter Team"),
          FlatButton(
            onPressed: () {
              print("Hey team");
            },
            child: Text('text me'),
            color: Colors.blue,
          ),
          Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('inside spacing'),
          )
        ],
      ),

// Column Row, expanded

Expanded(
            flex: 4,
                      child: Container(
              padding: EdgeInsets.fromLTRB(3.0, 3.0, 6.0, 6.0),
              color: Colors.pinkAccent,
              child: Text('Adnam'),
            ),
          ),
          Padding(
            
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              flex: 5,
                          child: Container( 
                padding: EdgeInsets.fromLTRB(3.0, 3.0, 6.0, 6.0),
                color: Colors.blue[600],
                child: Text('Ravi'),
              ),
            ),
          ),
           Expanded(
             flex: 1,
                      child: Container(
               padding: EdgeInsets.fromLTRB(3.0, 3.0, 6.0, 6.0),
              color: Colors.grey[600],
              child: Text('Anshuman'),
            ),
          ),

//loop of Images In flutter

Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: Column(
                  children: [
                    Image.asset('assets/1.jpg'),
                    Text('India')
                  ],
                )
                ),
                Expanded(child: Column(
                  children: [
                    Image.asset('assets/2.jpg'),
                    Text('Bharat')
                  ],
                )
                ),
                
              ],
            )
          ],
        ),
      ),

//Snackbar widget
Snackbar widget is to  show a lightweight message at the bottom of creen .It can also conatin optional action.
 Snackbar is usually used with Scafoold 

*/

/*
Date 24 August
Task 1: insertion font faimly from google font


*/
//runApp will to run the application in recent directory
void main() => runApp(MaterialApp(home: Home()));
// Stateful widget

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();

    // It creates the mutable state for that widget at location in this process.
  }
}

class _HomeState extends State<Home> {
  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showScaffold(String result) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(result),
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Snackbar tutorial'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            textColor: Colors.white,
            child: Text('Snackbar'),
            color: Colors.black,
            onPressed: () {
              _showScaffold('this is a SnackBar');
            },
          ),
          RaisedButton(
            textColor: Colors.black,
            child: Text('Snackbar 1'),
            color: Colors.yellow,
            onPressed: () {
              _showScaffold('this is a SnackBar version 2');
            },
          )
        ],
      )),
    );
  }
}
