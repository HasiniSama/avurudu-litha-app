import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:timezone/timezone.dart';
import 'package:intl/intl.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading>{

  void convertLocalToDetroit() async {
    DateTime nowTime = DateTime.now(); //local time
    final srilankaTime = new TZDateTime.from(nowTime, getLocation('Asia/Colombo')); //time in sri lanka
    print('Sri Lankan Time: ' + srilankaTime.toString());

    String time = DateFormat.jm().format(srilankaTime);
    String time24 = DateFormat.Hm().format(srilankaTime);
    String day = DateFormat.yMMMMd().format(srilankaTime);
  }

  @override
  void initState() {
    super.initState();
    convertLocalToDetroit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 200.0),
                  child: SpinKitFadingCube(
                    color: Colors.lightGreen,
                    size: 80.0,
                  ),
                ),
                Text('ආයුබෝවන්!',
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 50.0
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
