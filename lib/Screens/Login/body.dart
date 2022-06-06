// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetwith/Screens/Login/facebook.dart';
import 'package:meetwith/Screens/Login/google.dart';
import 'package:meetwith/Screens/Login/instagram.dart';
import 'package:meetwith/Screens/Login/text_field_container.dart';
import 'package:meetwith/constants.dart';
import 'package:meetwith/Screens/Login/background.dart';
//import 'package:sign_button/create_button.dart';
//import 'package:sign_button/sign_button.dart';


class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);


  @override
  // ignore: prefer_final_parameters
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromRGBO(255, 255, 240, 1),
      child: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/meetwithboth.jpeg"),
              height: 100,
              width: 100,
              alignment: Alignment.topCenter,
            ),
            SizedBox(height: 5),
            Text(
              "HOŞ \nGELDİNİZ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Yeni arkadaşların seni özledi...",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Facebook(
                  child: Column(
                    children: [],
                  ),
                ),
                Google(
                  child: Column(
                    children: [],
                  ),
                ),
              ],
            ),
            Instagram(
              child: Row(
              children: [
              ],
            ),
            ),
            OrWidget(),
            EmailInput(
              hintText: 'Email',
              onChanged: (value){},
            ),
            SizedBox(height: 5),
            PasswordField(
              onChanged: (value){},
            ),
            Text(
                'Beni Hatırla',
              overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            TextButton(
                  onPressed: () {},
                  child: Text(
                  'Parolamı Unuttum?',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Hesabın yok mu buraya tıkla',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RaisedButton(
                padding: const EdgeInsets.symmetric(horizontal: 80.0,),
                onPressed: (){
                  /*Navigator.of(context).push(MaterialPageRoute(builder: (context){return ();}));*/
                },
                color: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text('OTURUM AÇ')
            ),
          ],
        ),
      ),
    );
  }
}



class OrWidget extends StatelessWidget {
  const OrWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 20.0, right: 10.0),
            child: Divider(
              color: Colors.grey,
              height: 20,
            ),
          ),
        ),
        Text(
          "ya da",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 8,
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 20.0, right: 10.0),
            child: Divider(
              color: Colors.grey,
              height: 20,
            ),
          ),
        ),
      ],
    );
  }
}



class PasswordField extends StatelessWidget {
  final ValueChanged <String> onChanged;
  const PasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
          color: kPrimaryColor,
          ),
          suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
          ),
          hintText: "Şifre",
          border: InputBorder.none,
        ),
      ),
    );
  }
}


class EmailInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const EmailInput({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}








