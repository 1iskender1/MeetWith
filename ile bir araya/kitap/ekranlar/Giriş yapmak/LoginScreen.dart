import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../constants.dart';
import '../Signup/kayitol.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(title: '', style: TextStyle(fontFamily: 'Playfair Display' ),),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFF0),
        appBarTheme: const AppBarTheme(
            elevation: 0
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  static String tag = 'register-page';

  const LoginScreen (
      {required this.title, required TextStyle style});
  final String title;


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailTextEditController = new TextEditingController();
  final passwordTextEditController = new TextEditingController();

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  bool _validate3 = false;
  bool _validate2 = false;
  bool agree = false;

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
              Text(
              "HOŞ \nGELDİNİZ",
                textAlign: TextAlign.left,
              style: TextStyle(fontFamily: 'Playfair Display',
              fontWeight: FontWeight.bold,
              fontSize: 30,
              ),
              ),
            Text(
              "Yeni arkadaşların seni özledi",
              textAlign: TextAlign.left,
              style: TextStyle(fontFamily: 'Playfair Display',
                fontSize: 15,
              ),
            ),
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
                Row(
                    children: <Widget>[
                      Expanded(
                          child: Divider(
                            height: 40,
                            thickness: 4,
                            indent: 20,
                          )
                      ),
                      Text( "YA DA",
                        textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Playfair Display',
                            fontSize: 14,
                            color: Colors.grey,
                      ),
                      ),
                      Expanded(
                          child: Divider(
                            height: 20,
                            thickness: 4,
                            indent: 10,
                          ),
                      ),
                    ]
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 50, right: 50, top: 10, bottom: 5),
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
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        errorText: _validate2
                            ? 'Mail adresi boş bırakılamaz'
                            : null,
                        labelText: "Email adresi",
                        labelStyle: TextStyle(
                           fontFamily: 'Playfair Display',
                                color: Colors.black),
                        hintText: "Lütfen mail adresinizi yazın",
                        filled: true,
                        fillColor: Colors.white
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 50, right: 50, top: 10, bottom: 5),
                  child: TextFormField(
                    autofocus: false,
                    obscureText: true,
                    controller: passwordTextEditController,
                    textInputAction: TextInputAction.next,
                    focusNode: _passwordFocus,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        errorText: _validate3 ? 'Şifre boş bırakılamaz' : null,
                        labelText: "Şifre",
                        labelStyle: TextStyle(
                            fontFamily: 'Playfair Display',
                            color: Colors.black),
                        hintText: "Lütfen bir şifre oluşturun",
                        filled: true,
                        fillColor: Colors.white
                    ),
                  ),
                ),
                    Padding(
                      padding: EdgeInsets.only(),
                          child: CheckboxListTile(
                            title: Text ('Beni hatırla',
                            style: TextStyle(fontFamily: 'Playfair Display'),),
                            value: agree,
                            onChanged: (newvalue) {
                              setState(() {
                                agree = newvalue! ;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Color(0xA8A8CD4C),
                            checkColor: Colors.white,
                          ),
                        ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Parolamı unuttum',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Playfair Display',
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Hesap oluştur',
                    style: TextStyle(
                      fontFamily: 'Playfair Display',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 0.1,
                    ),
                  ),
                ),
                RaisedButton(
                    padding: EdgeInsets.only(left: 105, right: 105, top: 15, bottom: 10),
                    onPressed: (){
                      /*Navigator.of(context).push(MaterialPageRoute(builder: (context){return ();}));*/
                    },
                    color: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text('OTURUM AÇ',
                    style: TextStyle( fontFamily: 'Playfair Display',
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ],
            ),
        ],
        ),
        ),
    );
  }
}

