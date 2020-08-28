import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './customcard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius : 50,
                backgroundImage: AssetImage("assets/profilepic.jpg"),
              ),
              Text(
                "Anshumali Shaw",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[600], 
                ),
              ),
              Text(
                "Student At GCETTB",
                style: TextStyle(
                  fontFamily: "Source Sans Pro",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const Divider(
                color: Colors.black,
                height: 20,
                thickness: 5,
                endIndent: 0,
              ),
              CustomCard(
                icon: Icons.contact_mail,
                info: "shaw.anshu@gmail.com",
              ),
              CustomCard(
                icon: Icons.web,
                info: "Facebook(impalansh)",
              ),
              CustomCard(
                icon: Icons.web,
                info: "LinkedIn(anshumali-shaw12)",
              ),
              CustomCard(
                icon: Icons.web,
                info: "Instagram(@an5hu_5haw)",
              ),
              CustomCard(
                icon: Icons.web,
                info: "Medium(@shaw.anshu)",
              ),
              CustomCard(
                icon: Icons.phone,
                info: "(+91)9064960981",
              ),
              const Divider(
                color: Colors.black,
                height: 20,
                thickness: 5,
                endIndent: 0,
              ),
              Container(
                child: Text(
                  "Developed By Anshumali Shaw",
                  style: TextStyle(
                    fontFamily: "Source Sans Pro",
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}