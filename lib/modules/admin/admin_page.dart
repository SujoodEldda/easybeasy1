import 'package:easybeasy/modules/admin/add_product.dart';
import 'package:easybeasy/modules/admin/edit_product.dart';
import 'package:easybeasy/modules/admin/remove_product.dart';
import 'package:easybeasy/modules/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../shared/components/constants.dart';

class Admin_Screen extends StatefulWidget {
  static String routeName = "/admin_screen";

  @override
  State<Admin_Screen> createState() => _Admin_ScreenState();
}

class _Admin_ScreenState extends State<Admin_Screen> {

  int CurrentIndex1 = 0;

  List<Widget> screens = [
    Add_Product_Screen(),
    Remove_Product_Screen(),
    Edit_Product_Screen(),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: Text(
        'Admin Page'
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
            Icons.add,
          ),
          label: 'Add product',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.remove_circle,
          ),
          label: 'Remove item',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.edit_sharp,
          ),
          label: 'Edit item',
        ),
      ],
    ),


    );
  }
}