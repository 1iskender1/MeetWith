// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:meetwith/Screens/Welcome/LoginPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return LoginPage(
      press: (){},
      child: Column(
        children: <Widget> [],
      ),
    );
  }
}