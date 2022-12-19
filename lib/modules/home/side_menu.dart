import 'package:easybeasy/modules/login/login_screen.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            // child: Text(
            //   'menu',
            //   style: TextStyle(color: Colors.white, fontSize: 25),
            // ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/logo2.png'))),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Shopping cart'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('for payment'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.payments),
            title: Text('done payments'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => LoginScreen(),
            ),
            )
            },
          ),
        ],
      ),
    );
  }
}