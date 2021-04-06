import 'package:flutter/material.dart';

class Nakath{

  String name;
  String time;

  Nakath ({this.name, this.time});

  Widget buildTitle(BuildContext context) => Text(name);

  Widget buildTime(BuildContext context) => Text(time);
}