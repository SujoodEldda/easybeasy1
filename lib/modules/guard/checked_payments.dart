import 'package:flutter/material.dart';

class CheckedPaymentsScreen extends StatefulWidget{

  static String routeName = "/checked_payments";

  @override
  State<CheckedPaymentsScreen> createState() => _CheckedPaymentsScreenState();
}

class _CheckedPaymentsScreenState extends State<CheckedPaymentsScreen> {


  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.0,
        ),
        Text(
          'The list of the checked payments:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
          ),
        ),
      ],
    );
  }

}