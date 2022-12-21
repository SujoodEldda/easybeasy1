
import 'package:easybeasy/modules/home/home_page.dart';
import 'package:easybeasy/modules/login/login_screen.dart';
import 'package:easybeasy/modules/register/register_screen.dart';
import 'package:flutter/widgets.dart';

import 'models/splash/splash_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) =>LoginScreen(),
  HomePage.routeName: (context) => HomePage(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
};