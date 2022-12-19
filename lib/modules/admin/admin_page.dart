import 'package:easybeasy/modules/admin/add_product.dart';
import 'package:easybeasy/modules/admin/edit_product.dart';
import 'package:easybeasy/modules/admin/remove_product.dart';
import 'package:flutter/material.dart';

// 1. create database
// 2. create tables
// 3. open database
// 4. insert to database
// 5. get from database
// 6. update in database
// 7. delete from database

class Admin_Screen extends StatefulWidget {
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
        backgroundColor: Colors.redAccent,
        title: Text(
        'Admin Screen'
      ),
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