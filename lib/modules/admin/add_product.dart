import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class Add_Product_Screen extends StatefulWidget{

  @override
  State<Add_Product_Screen> createState() => _Add_Product_ScreenState();
}

class _Add_Product_ScreenState extends State<Add_Product_Screen> {

  var category = TextEditingController();
  var productname = TextEditingController();
  var brand = TextEditingController();
  var detail = TextEditingController();
  var id = TextEditingController();
  var country = TextEditingController();
  var ingredients = TextEditingController();
  var price = TextEditingController();
  var volume = TextEditingController();
  var place = TextEditingController();
  var use = TextEditingController();
  var photo = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  bool isPasswordvar = true;

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
              SizedBox(
                height: 40.0,
              ),
              defaultFormField(
                controller: productname,
                label: 'The product name',
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
                controller: brand,
                label: 'Brand name',
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
                controller: category,
                label: 'Category',
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
                controller: country,
                label: 'made country',
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
                controller: detail,
                label: 'details',
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
              defaultFormField(
                controller: ingredients,
                label: 'product ingredients',
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
              defaultFormField(
                controller: place,
                label: 'place of the product',
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
              defaultFormField(
                controller: price,
                label: 'price of the product',
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
                controller: use,
                label: 'how to use',
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
              defaultFormField(
                controller: volume,
                label: 'volume of the product',
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
              defaultFormField(
                controller: photo,
                label: 'photo of the product',
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
                text: 'add the product',
                function: ()
                {

                  if(formKey.currentState.validate())
                  {
                    print(category.text);
                    print(detail.text);
                    print(ingredients.text);
                    print(brand.text);
                    print(productname.text);
                    print(country.text);
                    print(id.text);
                    print(price.text);
                    print(use.text);
                    print(volume.text);
                    print(photo.text);

                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                            'successfully added !'
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
    );
  }
}