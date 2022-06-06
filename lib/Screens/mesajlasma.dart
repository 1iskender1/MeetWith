import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mesajlasma extends StatefulWidget {
  const mesajlasma({Key? key}) : super(key: key);

  @override
  State<mesajlasma> createState() => _mesajlasmaState();
}

class _mesajlasmaState extends State<mesajlasma> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children:<Widget>[
    const SizedBox(height: 20,),
    SizedBox(width:200,child:Image.asset('yazivelogo/yazi.png') ,),
    SizedBox(height: 200,),
    Icon(Icons.circle,color: const Color.fromRGBO(168, 205, 76, 1),),
    Text(
    'Güncelliyoruz...',
    style:TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),
        Icon(Icons.circle,
        color:const Color.fromRGBO(168, 205, 76, 1),),

        ]
    );
  }
}