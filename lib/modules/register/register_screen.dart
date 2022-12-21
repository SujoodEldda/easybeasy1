import 'package:easybeasy/models/user/MongoDBModelUser.dart';
import 'package:easybeasy/mongodb.dart';
import 'package:flutter/material.dart';

import '../../models/product/MongoDBModelProduct.dart';
import '../../shared/components/components.dart';
import '../../shared/components/constants.dart';
import '../home/home_page.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;
class RegisterScreen extends StatefulWidget{
  static String routeName = "/register_screen";

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
        backgroundColor: kPrimaryColor,
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
                      _insertData(id.text,email.text,firstname.text,lastname.text,password.text,phone.text);
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
  void _clearAll(){

  firstname.text = "";
  email.text = "";
  lastname.text = "";
  password.text = "";
  phone.text = "";
  id.text = "";
  passwordvar.text = "";

  }
  Future<void> _insertData(String id, String username,String firstname,String lastname,
      String password,String phone) async{
    var _id = M.ObjectId;
    final data = MongoDbModelUser(
      id: id,
      username: username,
      firstname: firstname,
      lastname: lastname,
      password: password,
      phone: phone,

    );
    var result = await MongoDatabase.insert1(data);
    _clearAll();
  }
}