import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(55.0),
        child: Container(
          child: Stack(
            alignment: Alignment.topRight,
            textDirection: TextDirection.rtl,
            fit: StackFit.loose,
            children: <Widget>[
              child,
            ],
          ),
        ),
      ),
    );
  }
}
