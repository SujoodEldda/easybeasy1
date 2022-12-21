import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../../shared/components/default_button.dart';

class Remove_Product_Screen extends StatefulWidget{
  static String routeName = "/remove_product";

  @override
  State<Remove_Product_Screen> createState() => _Remove_Product_ScreenState();
}

class _Remove_Product_ScreenState extends State<Remove_Product_Screen> {

  var id_deleted = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 240.0,
                  ),
                  defaultFormField(
                    controller: id_deleted,
                    label: 'the product\'s id',
                    type: TextInputType.text,
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

                  DefaultButton(
                    text: "DELETE THE PRODUCT",
                    press: () {
                      if(formKey.currentState.validate())
                      {
                        print(id_deleted.text);

                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                                'successfully deleted !'
                            )
                        )
                        );
                      }
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void _clearAll(){

    id_deleted.text = "";


  }
}