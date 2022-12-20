import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;
import '../../models/user/MongoDBModelUser.dart';
import '../../shared/components/components.dart';
import 'package:easybeasy/models/product//MongoDBModelProduct.dart';
import 'package:easybeasy/mongodb.dart';

class Add_Product_Screen extends StatefulWidget{

  @override
  State<Add_Product_Screen> createState() => _Add_Product_ScreenState();
}

class _Add_Product_ScreenState extends State<Add_Product_Screen> {

  var category = TextEditingController();
  var name = TextEditingController();
  var brand = TextEditingController();
  var details = TextEditingController();
  var id = TextEditingController();
  var country = TextEditingController();
  var ingredients = TextEditingController();
  var price = TextEditingController();
  var volume = TextEditingController();
  var place = TextEditingController();
  var use = TextEditingController();
  var photo = TextEditingController();
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
              SizedBox(
                height: 40.0,
              ),
              defaultFormField(
                controller: name,
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
                controller: details,
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
                    print(details.text);
                    print(ingredients.text);
                    print(brand.text);
                    print(name.text);
                    print(country.text);
                    print(id.text);
                    print(price.text);
                    print(use.text);
                    print(volume.text);
                    print(place.text);
                    // print(photo.text);
                    _insertData(id.text,name.text,country.text,category.text,
                        ingredients.text,details.text,place.text,price.text,use.text,brand.text,volume.text);


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
  void _clearAll(){

  category.text = "";
  details.text = "";
  ingredients.text = "";
  name.text = "";
  id.text = "";
  brand.text = "";
  country.text = "";
  price.text = "";
  use.text = "";
  volume.text = "";
  place.text = "";

  }
  Future<void> _insertData(String id, String name,String country,String category,
      String ingredients,String details,String place,String price,String use,String brand,String volume) async{
    var _id = M.ObjectId;
    final data = MongoDbModelProduct(
      id:id,
      name: name,
      country: country,
      category: category,
      ingredients: ingredients,
      details:details,
      place:place,
      price:price,
      volume:volume,
      use:use,
      brand:brand,

    );
    var result = await MongoDatabase.insert(data);
    _clearAll();
  }
}