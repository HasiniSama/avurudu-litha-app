import 'package:flutter/material.dart';
import 'package:avurudu_nakath_app/custom_app_bar.dart';
import 'package:clip_shadow/clip_shadow.dart';


class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Map data = {};
  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: ClipShadow(
          clipper: CustomAppBar(),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 10,
              offset: Offset( 0.0 , 1.0))],
          child: AppBar(
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Background2.jpg'),
                      fit: BoxFit.fill
                  )
              ),
            ),
            elevation: 20,
          ),
        ),
      ),
      body: Container(
            height: 590,
            margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
            decoration: BoxDecoration(
              color: Colors.lightGreen[900],
              image: DecorationImage(
                image: AssetImage('assets/Scroll1.png'),
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: ListTile(
                title: Text(data['name'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Abhaya',
                  ),
                ),
                subtitle: Text(data['description'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Bindumathi',
                  ),
                ),
              ),
            ),
          ),
      backgroundColor: Colors.lightGreen[900],
    );
  }
}
