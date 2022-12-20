import 'package:flutter/material.dart';
import 'dart:convert';

MongoDbModelUser mongoDbModelFromJson(String str) =>
    MongoDbModelUser.fromJson(json.decode(str));
String MongoDbModelUserToJson(MongoDbModelUser data) => json.encode(data.toJson());

class MongoDbModelUser {
  MongoDbModelUser({
    @required this.id,
    @required this.username,
    @required this.firstname,
    @required this.lastname,
    this.guard=false,
    this.admin = false,
    @required this.phone,
    @required this.password,

  });
  String id;
  String username;
  String firstname;
  String lastname;
  bool guard;
  bool admin;
  String phone;
  String password;

  factory MongoDbModelUser.fromJson(Map<String,dynamic>json) => MongoDbModelUser(
    id: json["_id"],
    username: json["username"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    guard: json["guard"],
    admin: json["admin"],
    phone: json["phone"],
    password: json["password"],
  );
  Map<String,dynamic> toJson() =>{
    "_id":id,
    "username":username,
    "firstname":firstname,
    "lastname":lastname,
    "guard":guard,
    "admin":admin,
    "phone":phone,
    "password": password,
  };


}
