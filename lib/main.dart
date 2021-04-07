import 'package:flutter/material.dart';
import 'package:avurudu_nakath_app/pages/home.dart';
import 'package:avurudu_nakath_app/pages/loading.dart';
import 'package:avurudu_nakath_app/pages/details.dart';
import 'package:timezone/data/latest.dart' as tz;


void main() {
  tz.initializeTimeZones();
  return runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => Loading(),
      '/home' : (context) => Home(),
      '/details' : (context) => Details(),
    },
  ));
}




