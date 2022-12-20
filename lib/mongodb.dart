import 'dart:developer';
import 'package:easybeasy/shared/components/constants.dart';
import 'package:mongo_dart/mongo_dart.dart';

import 'models/user/MongoDBModelUser.dart';
import 'models/product/MongoDBModelProduct.dart';

class MongoDatabase{
  static var collection_user,collection_product,collection_cart;
  static connect() async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    collection_user = db.collection(COLLECTIO_NAME_USER);
    collection_product = db.collection(COLLECTIO_NAME_PRODUCT);
    collection_cart = db.collection(COLLECTIO_NAME_CART);
    // var new1 = {"username": "sujood",
    //        "firstname": "sujood",
    //        "lastname": "eldda",
    //        "id": "323075846",
    //        "guard": false,
    //        "admin": false,
    //        "phone": "0547850348",
    //        "password": "1234",
    // };
    // await collection_user.insertOne(new1);
  }
  static Future<String> insert(MongoDbModelProduct data) async{
    try{
      var result = await collection_product.insertOne(data.toJson());
      if(result.isSuccess)
        return "DataInserted";
      else{
        return "somthing went wrong";
      }
    }
    catch(e){
      print(e.toString());
      return e.toString();
    }
  }
  static Future<String> insert1(MongoDbModelUser data) async{
    try{
      var result = await collection_user.insertOne(data.toJson());
      if(result.isSuccess)
        return "DataInserted";
      else{
        return "somthing went wrong";
      }
    }
    catch(e){
      print(e.toString());
      return e.toString();
    }
  }

}