// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, file_names, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetwith/Screens/Login/LoginScreen.dart';
import 'package:meetwith/Screens/Signup/Signup.dart';
import 'package:meetwith/constants.dart';

class LoginPage extends StatelessWidget {
  final Widget child;
  final Function press;
  const LoginPage({
    Key? key,
    required this.child,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBackColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(
                  image: AssetImage("assets/images/meetwithboth.jpeg"),
                  height: 110,
                  width: 300,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Image(
                  image: AssetImage("assets/images/Welcome.png"),
                  height: 250,
                width: 250,
                alignment: Alignment.center,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget> [
                      WelcomeText(),
                      SizedBox(height: 60),
                      RaisedButton(
                          padding: const EdgeInsets.symmetric(horizontal: 135.0,),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return SignupPage(
                                  title: " ",
                                  style: TextStyle(fontFamily: 'Playfair Display' ),
                              );
                            }));
                          },
                          color: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text('KAYDOL')
                      ),
                      SizedBox(height: 20),
                      RaisedButton(
                          padding: const EdgeInsets.symmetric(horizontal: 120.0,),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return LoginScreen();
                            }));
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text('OTURUM AÇ')
                      ),
                      SizedBox(height: 10),
                      RegisterIcon(),
                      SizedBox(height: 30),
                      child,
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterIcon extends StatelessWidget {
  const RegisterIcon({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: <Widget> [
        TextButton(
          onPressed: () {},
          child: Text(
            'Misafir olarak devam et',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Doğru zamanda doğru buluşmalar için \nhemen kaydol',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
    );
  }
}
