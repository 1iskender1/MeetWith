import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../EditProfile/editProfile.dart';
import '../SeeProfile/seeProfile.dart';
import '../constants.dart';



// import 'package:settings_page/Settings/imagepickExample.dart';
//import 'package:gallery_saver/gallery_saver.dart';

void setState(Null Function() param0) {}

class SettingsPage extends StatefulWidget {

  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int seciliSayfa = 0;

  int sayfaDegistir = 0;

  SettingsPage createState() => SettingsPage();

  bool status1 = true;

  bool status2= true;

  bool isSwitchOn = false;



  @override
  Widget build(BuildContext context) {
    //ScreenUtil.init(context, height: 896, width: 414, allowFontScalling: true);
    return Column(
        children: <Widget>[
          const SizedBox(height: 30),
          const Image(
            image: AssetImage("assets/images/meetwithboth.jpeg"),
            width: 300,
            alignment: Alignment.topCenter,
          ),
          //SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(
                LineAwesomeIcons.arrow_left,
                size: 30,
              ),
              const SizedBox(height: 15),
              Row(
                children: <Widget> [
                  Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 5.0),
                    child: const Divider(
                      color: Colors.grey,
                      height: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Color(0xFF949292),
            height: 20,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          const Flexible(
            child: Text(
              "Kullanıcı Ayarları",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: kSlaytColor,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Flexible(
            child: Row(
              children: [
                TextButton.icon(     // <-- TextButton
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return const editProfile(title: '', style: TextStyle(fontFamily: 'Playfair Display' ),);
                    }));
                  },
                  icon: const Icon(
                    Icons.account_circle_rounded,
                    size: 24.0,
                  ),
                  label: const Text('Profili düzenle'),
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                TextButton.icon(     // <-- TextButton
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return const seeProfile(title: ' ', style: TextStyle(fontFamily: 'Playfair Display', fontSize: 24.0, fontWeight: FontWeight.bold));
                    }));
                  },
                  icon: const Icon(
                    Icons.lock,
                    size: 24.0,
                  ),
                  label: const Text('Profilim'),
                ),
              ],
            ),
          ),
          const Flexible(
            child: Text(
              "İzinler",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: kSlaytColor,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[const Text("Bildirimler"),
                    FlutterSwitch(
                      value: status1,
                      onToggle: (val) {
                        setState(() {
                          status1 = val;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Konum"),
                    FlutterSwitch(

                      value: status2,
                      onToggle: (val) {
                        setState(() {
                          status2 = val;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),


        ],
      );
      }
}