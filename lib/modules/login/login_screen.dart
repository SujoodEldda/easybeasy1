import 'package:easybeasy/models/splash/splash_screen.dart';
import 'package:easybeasy/modules/admin/admin_page.dart';
import 'package:easybeasy/modules/home/home_page.dart';
import 'package:easybeasy/modules/login/screen_arguments.dart';
import 'package:easybeasy/shared/components/components.dart';
import 'package:flutter/material.dart';
import '../../shared/components/constants.dart';
import '../../shared/components/default_button.dart';
import '../guard/guard_page.dart';
import '../register/register_screen.dart';


class LoginScreen extends StatefulWidget
{
  static String routeName = "/login";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: BackButton(
          onPressed:(){
            Navigator.pushNamed(context, SplashScreen.routeName);
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    label: 'Email',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (String value)
                    {
                      if(value.isEmpty)
                      {
                        return 'email must not be empty';
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                    controller: passwordController,
                    label: 'Password',
                    prefix: Icons.lock,
                    suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                    isPassword: isPassword,
                    suffixPressed: ()
                    {
                      setState(()
                      {
                        isPassword = !isPassword;
                      });
                    },
                    type: TextInputType.visiblePassword,
                    validate: (String value)
                    {
                      if(value.isEmpty)
                      {
                        return 'password is too short';
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  DefaultButton(
                    text: "Login",
                    press: () {
                      if(emailController.text == 'arin@gmail.com') {
                        Navigator.pushNamed(context, HomePage.routeName,
                            arguments: ScreenArguments(emailController.text));
                      }if(emailController.text == 'admin') {
                        Navigator.pushNamed(context, Admin_Screen.routeName);

                      }if(emailController.text == 'guard') {
                        Navigator.pushNamed(context, GuardScreen.routeName);

                      }

                      emailController.text = "";
                      passwordController.text = "";
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RegisterScreen.routeName);
                          emailController.text = "";
                          passwordController.text = "";
                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            color: kPrimaryColor
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomePage.routeName,arguments: ScreenArguments(
                          emailController.text,
                          ),);
                          _clearAll();
                          },
                        child: Text(
                          'Enter without identification',
                          style: TextStyle(
                              color: kPrimaryColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _clearAll(){

    emailController.text = "";
    passwordController.text = "";

  }
}