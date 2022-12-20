import 'package:flutter/material.dart';
import 'dart:convert';

MongoDbModelProduct mongoDbModelFromJson(String str) =>
    MongoDbModelProduct.fromJson(json.decode(str));
String MongoDbModelProductToJson(MongoDbModelProduct data) => json.encode(data.toJson());

class MongoDbModelProduct {
  MongoDbModelProduct({
    @required this.id,
    @required this.name,
    @required this.country,
    @required this.category,
    @required this.ingredients,
    @required this.details,
    @required this.place,
    @required this.volume,
    @required this.price,
    @required this.use,
    @required this.brand,

  });
  String id;
  String name;
  String country;
  String category;
  String ingredients;
  String details;
  String place;
  String volume;
  String price;
  String use;
  String brand;

  factory MongoDbModelProduct.fromJson(Map<String,dynamic>json) => MongoDbModelProduct(
    id: json["_id"],
    name: json["name"],
    country: json["country"],
    category: json["category"],
    ingredients: json["ingredients"],
    details: json["details"],
    place: json["place"],
    price: json["price"],
    volume: json["volume"],
    use: json["use"],
    brand: json["brand"],
  );
  Map<String,dynamic> toJson() =>{
    "_id":id,
    "name":name,
    "country":country,
    "category":category,
    "ingredients":ingredients,
    "details":details,
    "place":place,
    "price": price,
    "volume": volume,
    "use": use,
    "brand": brand,
  };


}