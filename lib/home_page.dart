import 'package:flutter/material.dart';

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.red,
       leading: Icon(
         Icons.menu,
       ),
       title:Text(
         'First App',
       ),
       actions: [
         IconButton(
             onPressed: (){
           print('hello');
         }
             , icon: Icon(
               Icons.notifications,
             ))
       ],
     ),
     body: SafeArea(
       child: Text(
         'hello world'
       ),
     ),
   );
  }

}