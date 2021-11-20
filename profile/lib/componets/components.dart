import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  //text,icon for nochangeable
  final String text;
  final IconData icon;
  Function onPressed;

  ProfileCard({@required this.text, @required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //now we will add onPressed button
      onTap: onPressed,
      child: Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          color: Colors.white,
          // Study ListTile from  flutter docs
          child: ListTile(
            leading: Icon(
              icon,
              color: Colors.teal,
            ),
            title: Text(
              text,
              style: TextStyle(fontSize: 20.0, color: Colors.teal),
            ),
          )),
    );
  }
}
