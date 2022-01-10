import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class ScanBarcodePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _BarcodeScanPageState();

}

class _BarcodeScanPageState extends State<ScanBarcodePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ) ,
      )
    );
  }
}

Future scanBarcode() async{
  String? scanResult;
  try{
    scanResult = await FlutterBarcodeScanner.scanBarcode("#ff6666", "İptal", true, ScanMode.BARCODE);
  }on PlatformException{
    scanResult = "Platform Versiyonu Alırken Hata İle Karşılaşıldı.";
  }
}