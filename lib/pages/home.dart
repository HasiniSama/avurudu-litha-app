import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:avurudu_nakath_app/nakath_list.dart';
import 'package:avurudu_nakath_app/custom_app_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  List<Nakath> nakaths  = [
    Nakath( name: 'බද', time: 'hey'),
    Nakath( name: 'Wada Alleema', time: 'wada'),
    Nakath( name: 'Wada Alleema', time: 'wada'),
    Nakath( name: 'Wada ', time: 'wada'),
    Nakath( name: 'Wada Alleema', time: 'wada'),
    Nakath( name: 'Wada Alleema', time: 'wada'),
    Nakath( name: 'Wada Alleema', time: 'wada'),
    Nakath( name: 'Wada Alleem', time: 'wada'),
    Nakath( name: 'Hisa thel gaama', time: 'oiled')
  ];

  //List <String> items = ['hi', 'bye','rewww','rrrr'];

  @override
  Widget build(BuildContext context) {
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
            leading: Icon(Icons.arrow_back),
            elevation: 20,
            backgroundColor: Colors.lightGreen,
          ),
        ),
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 500,
          physics: FixedExtentScrollPhysics(),
          children:[
            ListView.builder(
            itemCount: nakaths.length,
              itemBuilder: (context, index) {
                final item = nakaths[index];
                return Container(

                  child: Card(
                    elevation: 5,
                    margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Background2.jpg'),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      child: ListTile(
                        title: Text('${item.name}',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('${item.time}',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
        ],
        ),
      ),
      backgroundColor: Colors.green,

    );
  }
}
