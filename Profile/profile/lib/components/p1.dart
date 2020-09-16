import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class ProfileCard extends StatelessWidget{
  final String text;
  final IconData icon;
  Function onPressed;
// constructor call and define the value in second class.
  ProfileCard({@required this.icon,@required this.text, this.onPressed});
  @override

  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPressed,
      child: Card(

        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
        color: Colors.white,

        child: ListTile(
          leading: Icon(
            icon,

            color: Colors.teal,
          ),
          title: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.teal,),
          ),
        ),

      ),
    );
  }
}