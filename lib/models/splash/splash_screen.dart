import 'package:easybeasy/models/splash/body.dart';
import 'package:flutter/material.dart';
import '../../shared/components/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}