// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';



class seeProfile extends StatefulWidget {
  const seeProfile (
      {required this.title, required TextStyle style}) : super(key: null);
  final String title;

  @override
  _seeProfileState createState() => _seeProfileState();
}

class _seeProfileState extends State<seeProfile> {
  bool agree= false;
  bool _isObscure = true;

  late String valueChoose;
  List <String> items = [
    "Dans",
    "Sanat",
    "Kamp&Doğa",
    "Yeme&İçme",
    "Çalışma",
  ];

  final _text = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 240, 1),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: AppBar(
              elevation: 0,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/meetwithboth.jpeg"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
            )
        ),
        body: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://lh3.googleusercontent.com/-b2WLeb7F76o/YIQ865wGzrI/AAAAAAAACtU/iaCdpC8ThC0T337vjKv_WKIxyui1HeOjwCLcBGAsYHQ/default_profile_400x400.png",
                            ))),
                    child: Text(
                        "Profilim",
                        style: TextStyle(
                          fontFamily: 'Playfair Display',
                          fontSize: 24.0,
                          //fontWeight: FontWeight
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ad-Soyadı",
                    style: TextStyle(fontFamily: 'Playfair Display', fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Sinem Karaoğlu",
                    style: TextStyle(fontFamily: 'Playfair Display', fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Mail adresi",
                    style: TextStyle(fontFamily: 'Playfair Display', fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "1sinemkaraoglu@gmail.com",
                    style: TextStyle(fontFamily: 'Playfair Display', fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hakkımda",
                    style: TextStyle(fontFamily: 'Playfair Display', fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "23 yaşındayım. Macera dolu ve gezmeyi seven bir insanım. Yeni insanlarla tanışmayı seviyorum.",
                    style: TextStyle(fontFamily: 'Playfair Display', fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )]));
  }
}

