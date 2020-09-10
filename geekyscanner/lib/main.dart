import 'dart:async';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() {
    return new _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  String result = 'Geeky Amitesh';

  Future _scanQR() async {
    try {
      String qrRs = await BarcodeScanner.scan();
      setState(() {
        result = qrRs;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission was denied";
        });
      } else {
        setState(() {
          result = "Unkown error $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "you pressed the back buttom before scanning";
      });
    } catch (ex) {
      setState(() {
        result = "Unkown error $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text('GeekyScanner', textAlign: TextAlign.center),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Text(
          result,
          style: new TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: _scanQR,
          icon: Icon(Icons.camera_alt),
          backgroundColor: Colors.blueAccent,
          label: Text('Scan')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
