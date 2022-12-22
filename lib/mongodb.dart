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
  static Future<String> update(String id, String change, String value) async{
    try{
      print("ddddddddddddddddddddddddddd"+id+"  "+change+"  "+value);
      var result = await collection_product.update(where.eq("_id",id),modify.set(change,value));
      if(result.isSuccess)
        return "DataUpdated";
      else{
        return "somthing went wrong";
      }
    }
    catch(e){
      print(e.toString());
      return e.toString();
    }
  }
  static Future<String> delete(String id) async{
    try{
      print("ddddddddddddddddddddddddddd"+id);
      var result = await collection_product.deleteOne({"_id":id});
      if(result.isSuccess)
        return "DataUpdated";
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