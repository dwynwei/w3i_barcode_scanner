import 'package:barcode_scanner/scanresult.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'scanmodel.dart';
import 'package:get/get.dart';

class BarcodeProgress extends GetxController {
  late BuildContext context;

  Future <void> scanQR() async {
    ScanModel scanString = ScanModel();
    try
    {
      scanString.scanResult = await FlutterBarcodeScanner.scanBarcode('#ff666666', 'İptal', true, ScanMode.DEFAULT);
    }
    on PlatformException{

    }
  }
}
