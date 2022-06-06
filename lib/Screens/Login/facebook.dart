import 'package:flutter/material.dart';
import 'package:meetwith/constants.dart';



class Facebook extends StatelessWidget {
  final Widget child;
  const Facebook({
    Key? key,
    required this.child,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () { },
          child: Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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



