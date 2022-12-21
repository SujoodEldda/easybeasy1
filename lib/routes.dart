
import 'package:easybeasy/modules/admin/add_product.dart';
import 'package:easybeasy/modules/admin/admin_page.dart';
import 'package:easybeasy/modules/admin/edit_product.dart';
import 'package:easybeasy/modules/admin/remove_product.dart';
import 'package:easybeasy/modules/home/home_page.dart';
import 'package:easybeasy/modules/login/login_screen.dart';
import 'package:easybeasy/modules/register/register_screen.dart';
import 'package:flutter/widgets.dart';
import 'models/splash/splash_screen.dart';
import 'modules/guard/check_payment.dart';
import 'modules/guard/checked_payments.dart';
import 'modules/guard/guard_page.dart';
import 'modules/guard/guard_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) =>LoginScreen(),
  HomePage.routeName: (context) => HomePage(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  Admin_Screen.routeName: (context) => Admin_Screen(),
  Edit_Product_Screen.routeName: (context) => Edit_Product_Screen(),
  Remove_Product_Screen.routeName: (context) => Remove_Product_Screen(),
  Add_Product_Screen.routeName: (context) => Add_Product_Screen(),
  QRCreatePage.routeName: (context) => QRCreatePage(),
  GuardScreen.routeName: (context) => GuardScreen(),
  CheckedPaymentsScreen.routeName: (context) => CheckedPaymentsScreen(),
  CheckPaymentScreen.routeName: (context) => CheckPaymentScreen(),

};