import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String text;
  final IconData icon;
  Function onPressed;
  ProfileCard({@required this.icon, @required this.text, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.teal,
          ),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.teal,
            ),
          ),
        ),
      ),
    );
  }
}
