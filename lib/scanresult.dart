import 'package:barcode_scanner/barcodescan.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scanner/scanmodel.dart';




class ScanBarcodeResult extends StatefulWidget{
  ScanBarcodeResult({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BarcodeScanResultState();

}

class _BarcodeScanResultState extends State<ScanBarcodeResult>{
  String resultDefault="Henüz Tarama Yapılmadı...";
  ScanModel scanModel = ScanModel();
  BarcodeProgress progress = BarcodeProgress();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Sonuç :",
              style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            Text(scanModel.scanReturn,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),),
            SizedBox(
              height: 200,
            ),

            SizedBox(
                width: 100,
                height: 50,
                child: FittedBox(
                  child: FloatingActionButton.extended(
                      onPressed: (){
                        progress.scanQR();
                      },
                      label: Text("Scan Barcode"),
                      icon: Icon(Icons.ac_unit_rounded),
                      backgroundColor: Colors.lightBlueAccent,
                    )
                )
            )

          ],
        ),
      ),
    );

  }

}

