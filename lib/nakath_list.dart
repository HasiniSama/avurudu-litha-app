import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:avurudu_nakath_app/main.dart';
import 'package:flutter/material.dart';


class Nakath{

  String title;
  String subtitle;
  String name;
  String time;
  String description;
  int day;
  int hour;
  int minute;

  Nakath ({this.title,this.subtitle,this.name, this.time, this.description,this.day, this.hour, this.minute});


  Future<void> scheduleNotification(int index) async {
    var scheduleNotificationDateTime = DateTime(2021, 4, day, hour, minute);
    var androidChannelSpecifics = AndroidNotificationDetails(
      'alarm_notif',
      'alarm_notif',
      'Channel for Alarm notification',
      icon: 'playstore',
      sound: RawResourceAndroidNotificationSound('koha_sound'),
      largeIcon: DrawableResourceAndroidBitmap('playstore'),
      enableLights: true,
      color: const Color.fromARGB(255, 255, 0, 0),
      ledColor: const Color.fromARGB(255, 255, 0, 0),
      ledOnMs: 1000,
      ledOffMs: 500,
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
      styleInformation: DefaultStyleInformation(true, true),
    );
    var iosChannelSpecifics = IOSNotificationDetails(
      sound: 'Koha_Sound.mp3.wav',
    );
    var platformChannelSpecifics = NotificationDetails(
        android: androidChannelSpecifics, iOS: iosChannelSpecifics);
    await flutterLocalNotificationsPlugin.schedule(
      index,
      title,
      subtitle,
      scheduleNotificationDateTime,
      platformChannelSpecifics,
      payload: 'Test Payload',
    );
  }
}

List<Nakath> nakaths  = [
  Nakath(
      title: 'නව සඳ බැලීම ',
      subtitle: 'අභිනව චන්ද්‍ර වර්ෂය සහ අභිනව සූර්ය වර්ෂය සඳහා අප්‍රේල් මස 16 වන සිකුරාදා දින නව සඳ බැලීම මැනවි.',
      name: 'kj i| ne,Su ',
      time: 'wfma%,a ui 16',
      description: "wNskj pkao% j¾Ih iy wNskj iQ¾h j¾Ih i|yd wfma%,a ui 16 jk isl=rdod Èk kj i| ne,Su uekú'",
      day : 16,
      hour: 0,
      minute: 0),
  Nakath(
      title: 'පරණ අවුරුද්ද සඳහා ස්නානය',
      subtitle: 'අප්‍රේල් මස 12 වෙනි සඳුදා දින දිවුල්පත් යුෂ මිශ්‍ර නානු ගා ස්නානය කොට ඉෂ්ට දේවතා අනුස්මරණයෙහි යෙදී වාසය මැනවි.',
      name: 'mrK wjqreoao i|yd iakdkh',
      time: 'wfma%,a ui 12',
      description: "wfma%,a ui 12 fjks i÷od Èk Èjq,am;a hqI ñY% kdkq .d iakdkh fldg bIag foaj;d wkqiaurKfhys fh§ jdih uekú'",
      day : 12,
      hour: 0,
      minute: 0),
  Nakath(
      title: 'අලුත් අවුරුදු උදාව',
      subtitle: 'අප්‍රේල් මස 14 වැනි බදාදා දින පූර්ව භාග 02.33 ට සිංහල අලුත් අවුරුද්ද උදා වෙයි.',
      name: 'wÆ;a wjqreÿ Wodj',
      time: "wfma%,a ui 14 fjks od 02'33 g",
      description: "wfma%,a ui 14 jeks nodod Èk mQ¾j Nd. 02'33 g isxy, wÆ;a wjqreoao Wod fjhs'",
      day : 14,
      hour: 2,
      minute: 33),
  Nakath(
      title: 'පුණ්‍ය කාලය',
      subtitle: 'අප්‍රේල් මස 13 වන අඟහරුවාදා අපර භාග 8.09 සිට 14 වැනි බදාදා පූර්ව භාග 08.57 දක්වා පුණ්‍ය කාලයවෙ.' ,
      name: 'mqKH ld,h',
      time: "wfma%,a ui 13 fjks od 20'09 isg 14 fjks od 08'57 olajd",
      description: "wfma%,a ui 13 jk w.yrejdod wmr Nd. 8'09 isg 14 jeks nodod mQ¾j Nd. 08'57 olajd mqKH ld,h neúka wfma%,a ui 13 jk w.yrejdod Èk wmr Nd. 8'09 g m<uqj wdydr mdk f.k ishÆ jev w;ayer wd.ñl j;dj;aj, fh§u o mqKH ld,fha wmr fldgi ;=< bgq lsÍu uekú'",
      day : 13,
      hour: 20,
      minute: 9),
  Nakath(
      title: 'ආහාර පිසීම',
      subtitle: 'අප්‍රේල් මස 14 වැනි බදාදා පූර්ව භාග 06.17 ට ළා කොළ (පලාවන්) පැහැති වස්ත්‍රාභරණයෙන් සැරසී නැගෙනහිර දිශාව බලා ලිප් බැඳ, ගිනි මොළවා, එළකිරි මිශ්‍ර කිරිබතක් ද මුං ඇට මිශ්‍ර කැවිලි වර්ගයක් ද පිළියෙල කරගැනීම මැනවි.' ,
      name: 'wdydr msiSu',
      time: "wfma%,a ui 14 fjks od 06'17 g",
      description: "wfma%,a ui 14 jeks nodod mQ¾j Nd. 06'17 g <d fld< ^m,djka& meye;s jia;% wdNrKfhka ieriS kef.kysr ÈYdj n,d ,sma ne|\" .sks fud<jd\" t<lsß ñY% lsßn;la o uqx weg ñY% leú,s j¾.hla o ms<sfh, lr.ekSu uekú'",
      day : 14,
      hour: 6,
      minute: 17),
  Nakath(
      title: 'වැඩ ඇල්ලීම, ගනුදෙනු කිරීම හා ආහාර අනුභවය',
      subtitle: 'අප්‍රේල් මස 14 වැනි බදාදා පූර්ව භාග 07.41 ට ළා කොළ පලාවන් පැහැති වස්ත්‍රාභරණයෙන් සැරසී නැගෙනහිර දිශාව බලා සියලු වැඩ අල්ලා ගනුදෙනු කොට ආහාර අනුභවය මැනවි.',
      name: 'jev we,a,Su" .kqfokq lsÍu wdydr wkqNjh',
      time: "wfma%,a ui 14 fjks od 07'41 g",
      description: "wfma%,a ui 14 jeks nodod mQ¾j Nd. 07'41 g <d fld< m,djka meye;s jia;% wdNrKfhka ieriS kef.kysr ÈYdj n,d ishÆ jev w,a,d .kqfokq fldg wdydr wkqNjh uekú'",
      day : 14,
      hour: 7,
      minute: 41),
  Nakath(
      title:'හිසතෙල් ගෑම',
      subtitle: 'අප්‍රේල් මස 17 වැනි සෙනසුරාදා උදේ 07.16 ට නිල් පැහැති වස්ත්‍රාභරණයෙන් සැරසී දකුණු දිශාව බලා හිසට නුග පත්ද පයට කරඳ පත් ද තබා නුග පත් යුෂ මිශ්‍ර නානු ද තෙල් ද ගා ස්නානය කිරීම මැනවි.',
      name: 'ysif;,a .Eu',
      time: "wfma%,a ui 17 fjks od 07'16 g",
      description: "wfma%,a ui 17 jeks fikiqrdod Wfoa 07'16 g ks,a meye;s jia;%dNrKfhka ieriS ol=Kq ÈYdj n,d ysig kq. m;ao mhg lr| m;a o ;nd kq. m;a hqI ñY% kdkq o f;,a o .d iakdkh lsÍu uekú'",
      day : 17,
      hour: 7,
      minute: 16),
  Nakath(
      title: 'රැකීරක්ෂා සඳහා පිටත්ව යෑම',
      subtitle: 'අප්‍රේල් මස 19 වන සඳුදා උදේ 06.39 ට සුදු පැහැති වස්ත්‍රාභරණයෙන් සැරසී, දී කිරි සහ ගිතෙල් මිශ්‍ර කිරිබතක් සහ කැවිලි වර්ග අනුභව කර දකුණු දිශාව බලා පිටත්ව යෑම මැනවි.',
      name: '/lSrlaId i|yd msg;aj hEu',
      time: "wfma%,a ui 19 fjks od 06'39 g",
      description: "wfma%,a ui 19 jk i÷od Wfoa 06'39 g iqÿ meye;s jia;% wdNrKfhka ieriS\" § lsß iy .sf;,a ñY% lsßn;la iy leú,s j¾. wkqNj lr ol=Kq ÈYdj n,d msg;aj hEu uekú'",
      day : 19,
      hour: 6,
      minute: 39)
];