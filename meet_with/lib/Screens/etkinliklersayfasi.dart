import 'package:flutter/material.dart';
import 'package:meetwith/Screens/anliketkinlik.dart';
import 'package:meetwith/Screens/danssayfasi.dart';


class etkinliklersayfasi extends StatefulWidget {
  const etkinliklersayfasi({Key? key}) : super(key: key);



  @override
  State<etkinliklersayfasi> createState() => _etkinliklersayfasiState();
}

class _etkinliklersayfasiState extends State<etkinliklersayfasi> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFF0),
        automaticallyImplyLeading: false,
        title: Image.asset('imagess/Ev.png',
          width: 300,
          height: 100,
          fit: BoxFit.fill,
        ),
        actions: const [],
        centerTitle: true,
        elevation: 0,
      ),
      body: // Generated code for this Column Widget...
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.all(5),
            child: Container(

              width: 300,
              height: 60,
              decoration: const BoxDecoration(
                color:Color.fromRGBO(168, 205, 76, 1) ,
              ),
              child: const Padding(
                padding: EdgeInsetsDirectional.all(5),
                child: Text(
                  'Kategoriye göre\netkinlikleri keşfet!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Padding(
          padding: const EdgeInsetsDirectional.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 180,
                height: 200,
                decoration: const BoxDecoration(
                  color:Color.fromRGBO(168, 205, 76, 1) ,
                ),
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed:(){},
                      child: Image.asset('imagess/music.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                     SizedBox(width: 5,),
                     const Text('Müzik', textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 185,
                height: 200,
                decoration: const BoxDecoration(
                  color:Color.fromRGBO(168, 205, 76, 1) ,
                ),
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return danssayfasi();
                        }
                        )
                        );
                      },
                      child: Image.asset('imagess/dans.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    SizedBox(width:5),
                     Text('Dans', textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ),
            Padding(
            padding: const EdgeInsetsDirectional.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 180,
                  height: 200,
                  decoration: const BoxDecoration(
                    color:Color.fromRGBO(168, 205, 76, 1) ,
                  ),
                  child: Row(
                    children: [
                      MaterialButton(
                        onPressed: (){},
                        child: Image.asset('imagess/cinema.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Sinema', textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 185,
                  height: 200,
                  decoration: const BoxDecoration(
                    color:Color.fromRGBO(168, 205, 76, 1) ,
                  ),
                  child: Row(
                    children: [
                      MaterialButton(
                       onPressed:(){},
                        child: Image.asset('imagess/consert.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Konser', textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),

          Padding(
            padding: const EdgeInsetsDirectional.all(5),
            child: MaterialButton(
              color: Color(0xFFA8CD4C),

              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return anliketkinlik();
                }));
              },
              // style: ElevatedButton.styleFrom(
              //   primary: Color(0xA8A8CD4C)),
              child: const Text(
                'Anlık etkinliklere git!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
              ),
              //style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}