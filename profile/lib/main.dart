import 'package:flutter/material.dart';
import 'package:profile/componets/components.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

const url = 'www.github.com/geekyamitesh';
const email = 'amiteshmanitiwari@gmail.com';
const phone = '+9193546****';
const location = 'Guragon,Haryana';

void main() {
  runApp(MyApp());
}

// First we will create Myapp Class with statless widget
class MyApp extends StatelessWidget {
  @override
  //statless widget to create ui/
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

//2nd create we will
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: SafeArea(
          //we will add column  it is our third step
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //for showing circulaimages
          CircleAvatar(
            //mainaxis allignment help to top from bottom
            //crossaxis alignement will help to left to right
            // images will not show in center allignemnt so that's reason we will use
            radius: 60,
            backgroundImage: AssetImage('images/11.jpg'),
          ),
          Text(
            'Amitesh Mani Tiwari',
            style: TextStyle(
              fontSize: 35.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lobster-Regular',
            ),
          ),
          Text(
            'Cse Student',
            style: TextStyle(
              letterSpacing: 2.0,
              color: Colors.amber,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
            width: 200,
            child: Divider(
              color: Colors.black45,
            ),
          ),
          // I'm adding conatiner for puting extra thing
          //we have removed container
          ProfileCard(
            text: phone,
            icon: Icons.phone,
            onPressed: () async {
              final phone_cll = 'tel:$phone';
              // we will use launcher
              // where we must async
              //where we will put launcher
              //we will start again
              if (await launcher.canLaunch(phone_cll)) {
                await launcher.launch(phone_cll);
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
              // we will use launcher
              // where we must async
              //where we will put launcher
              //we will start again
              if (await launcher.canLaunch(emailAdress)) {
                await launcher.launch(emailAdress);
              } else {
                throw 'Could not launch $emailAdress';
              }
            },
          ),

          ProfileCard(
            text: url,
            icon: Icons.web,
            onPressed: () async {
              // we will use launcher
              // where we must async
              //where we will put launcher
              //we will start again
              if (await launcher.canLaunch(url)) {
                await launcher.launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),

          ProfileCard(
            text: location,
            icon: Icons.location_city,
            onPressed: () {
              print('location');
            },
          ),
          //where we will add gesture detctor by tapping yellow cart
        ],
      )),
    );
  }
}
