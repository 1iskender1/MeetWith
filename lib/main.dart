import 'package:flutter/material.dart';
import 'modul1.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),

    ),
      home: SplashScreen()));
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = const Duration (milliseconds:1000 );
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


