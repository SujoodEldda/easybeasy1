import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;
import '../../models/user/MongoDBModelUser.dart';
import '../../shared/components/components.dart';
import 'package:easybeasy/models/product//MongoDBModelProduct.dart';
import 'package:easybeasy/mongodb.dart';

import '../../shared/components/default_button.dart';

class CheckPaymentScreen extends StatefulWidget{

  static String routeName = "/check_payment";

  @override
  State<CheckPaymentScreen> createState() => _CheckPaymentScreenState();
}

class _CheckPaymentScreenState extends State<CheckPaymentScreen> {


  var formKey = GlobalKey<FormState>();
  var getResult = 'QR Code Result';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        Center(
          child: DefaultButton(
            text: "SCAN TO CHECK PAYMENT",
            press: ()  {
              scanQRCode();
              print('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'+getResult);

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ShowProduct(
              //       id:getResult,
              //     ),
              //   ),
              // );
            },
          ),
        ),
        SizedBox(height: 20.0,),
        Text(getResult),
      ],
    );
  }
  void scanQRCode() async {
    try{
      final qrCode = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.QR);

      if (!mounted) return;

      setState(() {
        getResult = qrCode;
      });
      print(qrCode);
    } on PlatformException {
      getResult = 'Failed to scan QR Code.';
    }

  }

}