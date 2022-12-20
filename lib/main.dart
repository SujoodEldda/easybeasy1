import 'package:easybeasy/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'modules/admin/admin_page.dart';

import 'modules/login/login_screen.dart';
import 'mongodb.dart';

// final FirebaseApp app = FirebaseApp();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen(),
    );
  }
}


