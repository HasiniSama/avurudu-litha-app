import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:avurudu_nakath_app/nakath_list.dart';
import 'package:avurudu_nakath_app/custom_app_bar.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  final _scrollController = FixedExtentScrollController();
  static const double _itemHeight = 250;

  void gotoDetails (index){
    Nakath instance = nakaths[index];
    //navigate to home screen
    Navigator.pushNamed(context, '/details', arguments: {
      'name': instance.name,
      'description': instance.description,
    });
  }


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
            automaticallyImplyLeading : false,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Background3.jpg'),
                      fit: BoxFit.fill
                  )
              ),
            ),
            elevation: 20,
            backgroundColor: Colors.lightGreen,
          ),
        ),
      ),
      body: Center(
        child: ClickableListWheelScrollView(
          scrollController: _scrollController,
          itemHeight: _itemHeight,
          itemCount: nakaths.length,
          onItemTapCallback: (index) {
            gotoDetails(index);
          },
          child: ListWheelScrollView.useDelegate(
            controller: _scrollController,
            itemExtent: _itemHeight,
            diameterRatio: 2,
            physics: FixedExtentScrollPhysics(),
            overAndUnderCenterOpacity: 0.5,
            childDelegate: ListWheelChildBuilderDelegate(
                childCount: nakaths.length,
                builder: (BuildContext context, int index) {
                  final item = nakaths[index];
                  return Container(
                    height: 190,
                    margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[900],
                      image: DecorationImage(
                        image: AssetImage('assets/Scroll2.png'),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text('${item.name}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            fontFamily: 'Abhaya',
                            height: 1,
                          ),
                        ),
                        subtitle: Text('${item.time}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: 'Abhaya',
                          ),
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
        )
      ),
      backgroundColor: Colors.lightGreen[900],

    );
  }
}
