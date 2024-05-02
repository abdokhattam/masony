import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class LangController extends GetxController{
  void Lang(String c){
    Locale l=Locale(c);
    Get.updateLocale(l);
  }
}