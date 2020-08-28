import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:profile/components/p1.dart';

const url = 'www.github.com/geekyamitesh';
const email = 'amitesh@gmail.com';
const phone = '********';
const location = 'delhi';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[700],
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(''),
          ),
          Text(
            'Flutter Class',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              //task we have add font faimly
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Project time',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              //task we have add font faimly
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
            width: 250,
            child: Divider(
              color: Colors.lightBlue,
            ),
          ),
          ProfileCard(
            icon: Icons.phone,
            text: phone,
            onPressed: () {
              print('phone');
            },
          )
        ],
      )),
    );
  }
}
