import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: SciCal(),
    );
  }
}

class SciCal extends StatefulWidget {
  @override
  _SciCalState createState() => _SciCalState();
}

class _SciCalState extends State<SciCal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Geeky Calculator')),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(12, 20, 12, 0),
            child: Text(
              "",
              style: TextStyle(fontSize: 35.0),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(12, 20, 12, 0),
            child: Text(
              "",
              style: TextStyle(fontSize: 50.0),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.height * 0.75,
                child: Table(
                  children: [
                    TableRow(children: [
                      Container(
                        width: MediaQuery.of(context).size.height * 0.75,
                        color: Colors.amber,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: BorderSide(
                                  color: Colors.blue,
                                  width: 1,
                                  style: BorderStyle.solid)),
                          padding: EdgeInsets.all(15.0),
                          onPressed: null,
                          child: Text(
                            "C",
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.black45),
                          ),
                        ),
                      )
                    ])
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
