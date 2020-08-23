import 'dart:ui';

import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext){
    return  Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),

        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
          ),

        ],

        centerTitle: true,
        backgroundColor: Colors.blueGrey[700],
      ),
      body: Center(
       child: Container(
        color: Colors.white,
        child: Text('Hello Flutter Team',
          style: TextStyle(fontSize: 24, fontStyle:FontStyle.italic,
          color: Colors.blueGrey,fontWeight: FontWeight.w900),

       ),
      ),
      ),
        backgroundColor: Colors.black,

      floatingActionButton: FloatingActionButton(
        child: Text('+',
        style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.blueGrey[700],
      ),
    );

  }

}