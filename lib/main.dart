import 'package:flutter/material.dart';
import 'package:barcode_scanner/scanresult.dart';


void main()=>
  runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}

class Intro extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return IntroState();
  }
}

class IntroState extends State<Intro> {
  late ScanBarcodeResult result = ScanBarcodeResult();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/img/bs_bg.png"),
          )
        ),
        alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(50, 450, 50, 50),
          child:
            SizedBox(
                child: FloatingActionButton.extended(
                  onPressed: (){
                    Navigator.pushReplacement(
                      context,MaterialPageRoute(builder: (context) => ScanBarcodeResult()),);
                  },
                  label: Text("Scan Barcode"),
                  icon: Icon(Icons.ac_unit_rounded),
                  backgroundColor: Colors.lightBlueAccent,
                )
          )
      )
    );
  }
}





