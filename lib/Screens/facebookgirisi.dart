import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:meetwith/Screens/Welcome/WelcomePage.dart';
import 'package:meetwith/constants.dart';

class Facebook extends StatefulWidget {
  final Widget child;
  const Facebook({Key? key, required this.child}) : super(key: key);
  @override
  State<Facebook> createState() => _FacebookState();
}
class _FacebookState extends State<Facebook> {
  Map? _userData;
  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();
    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () async {
            final result = await FacebookAuth.i.login(
              permissions: ["public_profile", "email"],
            );
            if (result.status == LoginStatus.success) {
              final requestData = await FacebookAuth.i.getUserData(
                fields: "email, name",
              );
              setState(() {
                _userData = requestData;
              });
            }
            Navigator.of(context).push(MaterialPageRoute(builder: (context){return WelcomePage();}));
          },
          child: Container(
            alignment: Alignment.topRight,
            margin:  EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.3,
            child: const Text(
              "Facebook",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            decoration: BoxDecoration(
              color: kPrimaryBackColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
