import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading>{

  Future navigateToHomePage(context) async {
    Future.delayed(Duration(seconds: 3),()
    {
      Navigator.pushReplacementNamed(context, '/home',);
    });
  }

  @override
  void initState() {
    super.initState();
    navigateToHomePage(context);
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
                Text('wdhqfndajka',
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 50.0,
                      fontFamily: 'Astro',
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
