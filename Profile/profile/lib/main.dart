import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/components/p1.dart';
import 'package:url_launcher/url_launcher.dart';


const url ='https://www.linkedin.com/in/ravi-prasad-41b5731ab';
const email = 'raviprasasd2490@gmail.con';
const phone ='7985180097';
const location ='Roorkee';


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
            radius: 70,
            backgroundImage: AssetImage('assets/ravi.jpg'),
          ),

           Text('Ravi Prasad',
           style: TextStyle(fontSize: 35,
           fontFamily: 'Lobster-Regular.ttf',
               fontWeight: FontWeight.bold,
           color: Colors.white),
           ),

           Text('IT',
           style: TextStyle(fontSize: 25,
           color: Colors.white),
           ),
           SizedBox(
             height: 30,
             width: 250,
             child: Divider(
               color: Colors.blueGrey,
               thickness: 3,
             ),
           ),
           ProfileCard(
             text: phone,
             icon: Icons.phone,
             onPressed: () async {
               final phone_cll = 'tel:$phone';

               if (await canLaunch(phone_cll)) {
                 await launch(phone_cll);
               } else {
                 throw 'Could not launch $phone_cll';
               }
             },
           ),

           ProfileCard(
             text: email,
             icon: Icons.email,
             onPressed: () async {
               final emailAdress = 'mailto:$email';

               if (await canLaunch(emailAdress)) {
                 await launch(emailAdress);
               } else {
                 throw 'Could not launch $emailAdress';
               }
             },
           ),

           ProfileCard(
             text: url,
             icon: Icons.web,
             onPressed: () async {

               if (await canLaunch(url)) {
                 await launch(url);
               } else {
                 throw 'Could not launch $url';
               }
             },
           ),

           ProfileCard(
             text: location,
             icon: Icons.location_city,
             onPressed:() {
               print('location');
             },
           ),


         ]

      ),
      ),

    );

  }
}









































