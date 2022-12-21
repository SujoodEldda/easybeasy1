import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../../shared/components/constants.dart';
import '../../shared/components/default_button.dart';

class Edit_Product_Screen extends StatefulWidget{
  static String routeName = "/edit_product";
  @override
  State<Edit_Product_Screen> createState() => _Edit_Product_ScreenState();
}

class _Edit_Product_ScreenState extends State<Edit_Product_Screen> {

  String dropdownValue = list_editing.first;
  var formKey = GlobalKey<FormState>();

  var new_edit = TextEditingController();
  var id_edited = TextEditingController();
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
            [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100.0,
                ),
                defaultFormField(
                  controller: id_edited,
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

                DropdownButton<String>(
                  isExpanded:true,
                  value: dropdownValue,
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: kPrimaryColor,
                  ),
                  dropdownColor: kPrimaryColor,
                  elevation: 100,
                  style: const TextStyle(color: kTextColor),

                  onChanged: (String value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value;
                    });
                  },
                  items: list_editing.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Center(
                        child: Text(
                            value
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultFormField(
                  controller: new_edit,
                  label: 'the new value',
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
                // defaultButton(
                //   text: 'edit',
                //   function: ()
                //   {
                //
                //     if(formKey.currentState.validate())
                //     {
                //       print(new_edit.text);
                //
                //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                //           content: Text(
                //               'successfully edited !'
                //           )
                //       )
                //       );
                //     }
                //
                //   },
                // ),
                DefaultButton(
                  text: "EDIT THE VALUE",
                  press: () {
                    if(formKey.currentState.validate())
                    {
                      print(new_edit.text);

                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              'successfully edited !'
                          )
                      )
                      );
                    }
                  },
                ),
              ],
            ) ],
          ),
        ),
      ),
    );


  }
  void _clearAll(){

    new_edit.text = "";
    id_edited.text = "";


  }
}