import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../home/home_page.dart';

class RegisterScreen extends StatefulWidget{
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var email = TextEditingController();

  var firstname = TextEditingController();

  var lastname = TextEditingController();

  var password = TextEditingController();

  var phone = TextEditingController();

  var id = TextEditingController();

  var passwordvar = TextEditingController();

  var formKey = GlobalKey<FormState>();


  bool isPassword = true;
  bool isPasswordvar = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Register for customers"
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                SizedBox(
                  height: 40.0,
                ),
                defaultFormField(
                  controller: firstname,
                  label: 'First Name',
                  type: TextInputType.name,
                  validate: (String value)
                  {
                    if(value.isEmpty)
                    {
                      return 'the field must not be empty';
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
                defaultFormField(
                  controller: lastname,
                  label: 'Last Name',
                  type: TextInputType.name,
                  validate: (String value)
                  {
                    if(value.isEmpty)
                    {
                      return 'the field must not be empty';
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
                defaultFormField(
                  controller: email,
                  label: 'Email Address',
                  type: TextInputType.emailAddress,
                  validate: (String value)
                  {
                    if(value.isEmpty)
                    {
                      return 'the field must not be empty';
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
                defaultFormField(
                  controller: id,
                  label: 'identification number',
                  type: TextInputType.number,
                  validate: (String value)
                  {
                    if(value.isEmpty)
                    {
                      return 'the field must not be empty';
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
                defaultFormField(
                  controller: phone,
                  label: 'phone number',
                  type: TextInputType.number,
                  validate: (String value)
                  {
                    if(value.isEmpty)
                    {
                      return 'the field must not be empty';
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
                defaultFormField(
                  controller: password,
                  label: 'password',
                  isPassword: isPassword,
                  suffix: isPassword ? Icons.visibility : Icons.visibility_off,
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
                      return 'the field must not be empty';
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
                defaultFormField(
                  controller: passwordvar,
                  label: 'again password',
                  isPassword: isPasswordvar,
                  suffix: isPasswordvar ? Icons.visibility : Icons.visibility_off,
                  suffixPressed: ()
                  {
                    setState(()
                    {
                      isPasswordvar = !isPasswordvar;
                    });
                  },
                  type: TextInputType.visiblePassword,
                  validate: (String value)
                  {
                    if(value.isEmpty)
                    {
                      return 'the field must not be empty';
                    }
                    if(passwordvar.text!=password.text)
                    {
                      return 'must enter the same password';
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 40.0,
                ),
                defaultButton(
                  text: 'register',
                  function: ()
                  {

                    if(formKey.currentState.validate())
                    {
                      print(email.text);
                      print(password.text);
                      print(passwordvar.text);
                      print(lastname.text);
                      print(firstname.text);
                      print(id.text);
                      print(phone.text);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              'successfully created !'
                          )
                      )
                      );

                    }

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}