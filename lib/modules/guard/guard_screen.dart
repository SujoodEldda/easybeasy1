
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:qr_flutter/qr_flutter.dart';

import '../../shared/components/constants.dart';

class QRCreatePage extends StatefulWidget {
  static String routeName = "/qr_creator";
  @override
  _QRCreatePageState createState() => _QRCreatePageState();
}

class _QRCreatePageState extends State<QRCreatePage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: kPrimaryColor,
      title: Text(
        "QR Code Generator",
        style: TextStyle(fontFamily: "Sofia"),
      ),
      centerTitle: true,
      elevation: 0.0,
    ),
    body: Center(
      child: SingleChildScrollView(
        //Scroll view given to Column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImage(
              data: controller.text,
              size: (math.min(MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height)) /
                  1.2,
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 40),
            buildTextField(context),
          ],
        ),
      ),
    ),
  );
  Widget buildTextField(BuildContext context) => Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        controller: controller,
        style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          hintText: 'Enter the data',
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Color(0XFF5fa693)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          suffixIcon: IconButton(
            color: Color(0XFF5fa693),
            icon: Icon(
              Icons.done,
              size: 30,
            ),
            onPressed: () => setState(() {}),
          ),
        ),
      ));
}