import 'package:flutter/material.dart';
import 'package:avurudu_nakath_app/pages/home.dart';
import 'package:avurudu_nakath_app/pages/loading.dart';
import 'package:avurudu_nakath_app/pages/details.dart';
import 'package:avurudu_nakath_app/nakath_list.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    var initializationSettingsAndroid = new AndroidInitializationSettings('playstore');
    var initializationSettingsIOS = new IOSInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
        onDidReceiveLocalNotification:
            (int id, String title, String body, String payload) async {});
    var initializationSettings = new InitializationSettings(android:initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: (String payload) async {
        if (payload != null) {
          debugPrint('notification payload: ' + payload);
        }
      });

    for (var i = 0; i < nakaths.length; i++) {
      final item = nakaths[i];
      item.scheduleNotification(i);
    }

  return runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => Loading(),
      '/home' : (context) => Home(),
      '/details' : (context) => Details(),
    },
  ));
}




