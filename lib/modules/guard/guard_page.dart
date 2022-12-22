import 'package:easybeasy/modules/admin/add_product.dart';
import 'package:easybeasy/modules/admin/edit_product.dart';
import 'package:easybeasy/modules/admin/remove_product.dart';
import 'package:easybeasy/modules/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../shared/components/constants.dart';
import 'check_payment.dart';
import 'checked_payments.dart';

class GuardScreen extends StatefulWidget {
  static String routeName = "/guard_screen";

  @override
  State<GuardScreen> createState() => _GuardScreenState();
}

class _GuardScreenState extends State<GuardScreen> {

  int CurrentIndex1 = 0;

  List<Widget> screens = [
    CheckPaymentScreen(),
    CheckedPaymentsScreen(),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: Text(
            'Guard Page'
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, LoginScreen.routeName);

          }, icon: Icon(
            Icons.logout,
          ))
        ],
      ),
      body: screens[CurrentIndex1],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: CurrentIndex1,
        onTap: (index) {
          setState((){
            CurrentIndex1 = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.radio_button_unchecked,
            ),
            label: 'check payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.radio_button_checked,
            ),
            label: 'checked payments',
          ),

        ],
      ),


    );
  }
}