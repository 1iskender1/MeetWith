

import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:meetwith/Screens/ilksayfa.dart';
import 'package:meetwith/constants.dart';

import '../kayitol.dart';

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
  static String tag = 'register-page';

  const SignupPage (
      {required this.title, required TextStyle style});
  final String title;

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final _formKey = GlobalKey<FormState>();
  bool agree = false;
  bool _isObscure = true;

  final emailTextEditController = new TextEditingController();
  final firstNameTextEditController = new TextEditingController();
  final lastNameTextEditController = new TextEditingController();
  final passwordTextEditController = new TextEditingController();
  final confirmPasswordTextEditController = new TextEditingController();

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _firstNameFocus = FocusNode();
  final FocusNode _lastNameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  String _errorMessage = '';

  void processError(final PlatformException error) {
    setState(() {
      _errorMessage = error.message!;
    });
  }

  bool _validate = false;
  bool _validate1 = false;
  bool _validate2 = false;
  bool _validate3 = false;
  bool _validate4 = false;


  @override
  Widget build(BuildContext context) {
    Future<void> firebaseauth() async {
      await _firebaseAuth
          .createUserWithEmailAndPassword(
          email: emailTextEditController.text,
          password: passwordTextEditController.text);
      await FirebaseFirestore.instance
          .collection('kullanicilar')
          .add({
        'Adı': firstNameTextEditController.text,
        'Soyadı': lastNameTextEditController.text,
        'Email': emailTextEditController.text,
        'Şifre': passwordTextEditController.text,
        'Şifretekrar': confirmPasswordTextEditController.text,
      });
    }
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
                    onPressed: () async {
                      await signInWithGoogle();
                    },
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

            Padding(
              padding: EdgeInsets.only(
                  left: 50, right: 50, top: 15, bottom: 10),
              child: TextField(
                autofocus: false,
                textInputAction: TextInputAction.next,
                focusNode: _firstNameFocus,
                onSubmitted: (term) {
                  FocusScope.of(context).requestFocus(_lastNameFocus);
                },
                controller: firstNameTextEditController,
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
                autofocus: false,
                textInputAction: TextInputAction.next,
                focusNode: _lastNameFocus,
                onSubmitted: (term) {
                  FocusScope.of(context).requestFocus(_emailFocus);
                },
                controller: lastNameTextEditController,
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
                autofocus: true,
                textInputAction: TextInputAction.next,
                focusNode: _emailFocus,
                onSubmitted: (term) {
                  FocusScope.of(context).requestFocus(_passwordFocus);
                },
                controller: emailTextEditController,
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
                    errorText: _validate2
                        ? 'Mail adresi boş bırakılamaz'
                        : null,
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
              child: TextFormField(
                autofocus: false,
                obscureText: true,
                controller: passwordTextEditController,
                textInputAction: TextInputAction.next,
                focusNode: _passwordFocus,
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
                        });
                      },),
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
              child: TextFormField(
                key: _formKey,
                controller: confirmPasswordTextEditController,
                focusNode: _confirmPasswordFocus,
                textInputAction: TextInputAction.done,
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
                    errorText: _validate4
                        ? 'Lütfen şifrenizi tekrar girin'
                        : null,
                    labelText: "Şifre onay",
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },),
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
                        activeColor: Color(0xA8A8CD4C),
                        checkColor: Colors.white,
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
              child: MaterialButton(
                  color: kPrimaryColor,
                  highlightColor: Colors.grey,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Kaydol",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    _firebaseAuth;
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder:(context) {
                            return ilksayfa();
                          }),
                          (route) => false,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}