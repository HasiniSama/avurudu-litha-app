import 'package:flutter/material.dart';
import 'package:avurudu_nakath_app/pages/home.dart';
import 'package:avurudu_nakath_app/pages/loading.dart';
import 'package:avurudu_nakath_app/pages/details.dart';



void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/details' : (context) => Details(),
  },
));




