import 'package:easybeasy/shared/components/size_config.dart';
import 'package:flutter/material.dart';

const MONGO_URL = "mongodb+srv://sujood:1234@cluster0.fbuw1jd.mongodb.net/easy?retryWrites=true&w=majority";
const COLLECTIO_NAME_USER = "users";
const COLLECTIO_NAME_PRODUCT = "products";
const COLLECTIO_NAME_CART = "carts";

const List<String> list_editing = <String>['name', 'country', 'category', 'ingredients','details', 'place', 'volume', 'price', 'use', 'brand'];
const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
const defaultDuration = Duration(milliseconds: 250);
final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}