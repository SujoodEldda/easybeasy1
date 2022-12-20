import 'dart:developer';

import 'package:easybeasy/shared/components/constants.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase{
  static connect() async{
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var collection = db.collection(COLLECTIO_NAME);
    print(await collection.find().toList());

  }
}