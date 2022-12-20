import 'dart:developer';
import 'package:easybeasy/shared/components/constants.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase{
  static connect() async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var collection_user = db.collection(COLLECTIO_NAME_USER);
    var collection_product = db.collection(COLLECTIO_NAME_PRODUCT);
    var collection_cart = db.collection(COLLECTIO_NAME_CART);
    var new1 = {"username": "sujood",
           "firstname": "sujood",
           "lastname": "eldda",
           "id": "323075846",
           "guard": false,
           "admin": false,
           "phone": "0547850348",
           "password": "1234",
    };
    await collection_user.insertOne(new1);

  }
}