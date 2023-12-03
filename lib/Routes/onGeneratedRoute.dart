// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/burcDetay.dart';

import '../model/burc.dart';

// ignore: camel_case_types
class onGeneratedBurc{
  static Route<dynamic>? generatedRouter(settings) {
        if("burcDetay"==settings.name){
          if(defaultTargetPlatform==TargetPlatform.iOS){

            return CupertinoPageRoute(builder: ((context) => BurcDetayPage(burc: settings.arguments as Burc)));
          }
          return MaterialPageRoute(builder:((context) => BurcDetayPage(burc: settings.arguments as Burc)) );
        }
        return null;
      }
}