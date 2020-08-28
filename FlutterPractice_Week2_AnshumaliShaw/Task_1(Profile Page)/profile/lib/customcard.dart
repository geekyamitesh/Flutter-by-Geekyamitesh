import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget
{
  final String info;
  final IconData icon;

  CustomCard({this.icon,this.info});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.amber[400],
        ),
      title: Text(
        info,
        style: TextStyle(
          fontFamily: 'Source Sans Pro',
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
      ),
    );
  }

}