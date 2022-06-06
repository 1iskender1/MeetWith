import 'package:flutter/material.dart';
import 'package:meetwith/constants.dart';


class Google extends StatelessWidget {
  final Widget child;
  const Google({
    Key? key,
    required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.3,
            child: const Text(
              "Google",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            decoration: BoxDecoration(
              color: kPrimaryBackColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black,),
            ),
          ),
        ),
      ],
    );
  }
}