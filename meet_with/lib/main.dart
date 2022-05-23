import 'package:flutter/material.dart';
import 'modul1.dart';

void main() {
  runApp(MaterialApp(
      home: SplashScreen()));
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration (milliseconds:500 );
    Future.delayed(d,() {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder:(context) {
              return TestPage();
            }),
            (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Image.asset("images/ekran2.png")],
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


