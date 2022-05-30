// ignore_for_file: file_names, deprecated_member_use

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/widgets.dart';
import 'package:meetwith/Screens/etkinliklersayfasi.dart';
import 'package:meetwith/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignupPage (title: '', style: TextStyle(fontFamily: 'Playfair Display' ),),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFF0),
        appBarTheme: const AppBarTheme(
            elevation: 0
        ),
      ),
    );
  }
}

class SignupPage extends StatefulWidget {
  const SignupPage (
      {required this.title, required TextStyle style}) : super(key: null);
  final String title;

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool agree= false;
  bool _isObscure = true;

  final _text = TextEditingController();
  bool _validate = false;
  
  final _textsoyad = TextEditingController();
  bool _validate1 = false;
  
  final _textmail = TextEditingController();
  bool _validate2 = false;

  final _textsifre = TextEditingController();
  bool _validate3 = false;

  final _textsifretekrar = TextEditingController();
  bool _validate4 = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
    _textsoyad.dispose();
    super.dispose();
     _textmail.dispose();
    super.dispose();
    _textsifre.dispose();
    super.dispose();
    _textsifretekrar.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            shadowColor: const Color.fromRGBO(255, 255, 240, 1),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/Ev.png"),
                      fit: BoxFit.fill
                  )
              ),
            ),
          )
      ),
      body: Container(
        color: const Color.fromRGBO(255, 255, 240, 1),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: FacebookAuthButton(
                    onPressed: () {},
                    text: "Facebook",
                    darkMode: false,
                    style: const AuthButtonStyle(
                      iconType: AuthIconType.secondary,
                      buttonColor: Colors.white,
                      borderColor: Colors.grey,
                      borderRadius: 10.0,
                      borderWidth: 1.0,
                      elevation: 10.0,
                      width: 40.0,
                      height: 35.0,
                      separator: 20.0,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GoogleAuthButton(
                    onPressed: () {},
                    text: "Google",
                    darkMode: false,
                    style: const AuthButtonStyle(
                      iconType: AuthIconType.secondary,
                      buttonColor: Colors.white,
                      borderColor: Colors.grey,
                      borderRadius: 10.0,
                      borderWidth: 1.0,
                      elevation: 10.0,
                      width: 40.0,
                      height: 35.0,
                      separator: 20.0,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints.tightForFinite(width: 200),
                  child: TwitterAuthButton(
                    onPressed: () {},
                    text: "Twitter",
                    darkMode: false,
                    style: const AuthButtonStyle(
                      iconType: AuthIconType.secondary,
                      buttonColor: Colors.white,
                      borderColor: Colors.grey,
                      borderRadius: 10.0,
                      borderWidth: 1.0,
                      elevation: 10.0,
                      width: 40.0,
                      height: 35.0,
                      separator: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 50, right: 50, top: 15, bottom: 10),
              child: TextField(
                controller: _text,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    errorText: _validate ? 'İsim boş bırakılamaz' : null,
                    labelText: "Adınız",
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Lütfen adınızı yazın",
                    filled: true,
                    fillColor: Colors.white
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 50, right: 50, top: 15, bottom: 10),
              child: TextField(
                controller: _textsoyad,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    errorText: _validate1 ? 'Soyisim boş bırakılamaz' : null,
                    labelText: "Soyadınız",
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Lütfen soyadınızı yazın",
                    filled: true,
                    fillColor: Colors.white
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 50, right: 50, top: 15, bottom: 10),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _textmail,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    errorText: _validate2 ? 'Mail adresi boş bırakılamaz' : null,
                    labelText: "Email adresi",
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Lütfen mail adresinizi yazın",
                    filled: true,
                    fillColor: Colors.white
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 50, right: 50, top: 15, bottom: 10),
              child: TextField(
                controller: _textsifre,
                obscureText: _isObscure,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    errorText: _validate3 ? 'Şifre boş bırakılamaz' : null,
                    labelText: "Şifre",
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        }); }, ),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Lütfen bir şifre oluşturun",
                    filled: true,
                    fillColor: Colors.white
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 50, right: 50, top: 15, bottom: 10),
              child: TextField(
                controller: _textsifretekrar,
                obscureText: _isObscure,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    errorText: _validate4 ? 'Lütfen şifrenizi tekrar girin' : null,
                    labelText: "Şifre onay",
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        }); }, ),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Lütfen şifrenizi tekrar girin",
                    filled: true,
                    fillColor: Colors.white
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Material(
                      color: Color(0xFFFFFF0),
                      child: Checkbox(
                        value: agree,
                        onChanged: (value) {
                          setState(() {
                            agree = value ?? false;
                          });
                        },
                      ),
                    ),
                    const Text(
                      'Kullanıcı Sözleşmesini okudum ve kabul ediyorum.',
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: RaisedButton(
                color: kPrimaryColor,
                highlightColor: Colors.grey,
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Kaydol",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    _text.text.isEmpty ? _validate = true : _validate = false;
                  });
                  print("Kayıt olundu.");
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return etkinliklersayfasi();
                  }
                  )
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
