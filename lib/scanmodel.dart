import 'package:flutter/material.dart';

class ScanModel {
  String scanResult="";

  String get scanReturn => scanResult;

  set scanReturn(String value){
    scanResult = value;
  }

}