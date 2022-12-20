import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../../shared/components/constants.dart';

class Edit_Product_Screen extends StatefulWidget{
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120.0,
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

          Container(
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 100,
              style: const TextStyle(color: Colors.redAccent),
              underline: Container(
                height: 4,
                width: 70,
                color: Colors.redAccent,
              ),
              onChanged: (String value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value;
                });
              },
              items: list_editing.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                      value
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 40.0,
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
          defaultButton(
            text: 'edit',
            function: ()
            {

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
      );


  }
}