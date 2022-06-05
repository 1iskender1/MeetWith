import 'package:flutter/material.dart';
import 'package:yeni/Screens/etkinliklersayfasi.dart';

class danssayfasi extends StatefulWidget {
  const danssayfasi({Key? key}) : super(key: key);

  @override
  State<danssayfasi> createState() => _danssayfasiState();
}
class _danssayfasiState extends State<danssayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF0),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFFFFFF0),
          child: Column(
              children: <Widget>[
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(width:300, height: 100,
                      child:Image.asset('assets/images/Ev.png'),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          iconSize: 50,
                          onPressed: (){
                          Navigator.of(context).pop(MaterialPageRoute(
                            builder: (context){return const etkinliklersayfasi();
                              },),);},
                          icon: Icon(
                            size: 50,
                            Icons.arrow_back_outlined,
                            color: Color(0xA8A8CD4C),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent,
                              ),
                              child: Row(
                                children: const [Padding(
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  child: CircleAvatar(
                                    foregroundImage: AssetImage('assets/images/dans.png'),
                                    radius: 60,
                                    backgroundColor: Color.fromRGBO(255, 255, 240, 1),),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  child: Text('Dans', style: TextStyle(
                                      shadows: [Shadow(
                                        blurRadius: 15.0,
                                        color: Colors.black,
                                        offset: Offset(5.0, 5.0),),],
                                      color: Colors.white, fontSize: 40),),
                                ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent,
                              ),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color:const Color(0xA8A8CD4C),
                                    ),
                                    child: Image.asset('assets/images/dansgecesi.png',
                                      width: 80,
                                      height: 120,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(1, 10, 1, 5),
                                          child: Text(
                                            'Dans Gecesi',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              shadows: [Shadow(
                                                blurRadius: 11.0,
                                                color: Colors.grey,
                                                offset: Offset(5.0, 5.0),),],
                                              fontFamily: 'OpenSans',
                                              fontSize: 25,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(1, 5, 1, 1),
                                          child: Text('Ankarada 01/07/22’deki dans'
                                              '\n gecesinde Salsa ve Bachata bilen'
                                              '\n bir dans partneri arıyorum.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                          shadows: [Shadow(
                                            blurRadius: 7.0,
                                            color: Colors.grey,
                                            offset: Offset(3.0, 3.0),),],
                                          fontFamily: 'OpenSans',
                                          fontSize: 15,
                                          color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(1, 5, 1, 5),
                                          child: Text(
                                            'Etkinliği oluşturan kişi SalihTekin',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              shadows: [Shadow(
                                                blurRadius: 13.0,
                                                color: Colors.grey,
                                                offset: Offset(3.0, 3.0),),],
                                              fontFamily: 'OpenSans',
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent,
                              ),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color:const Color(0xA8A8CD4C),
                                    ),
                                    child: Image.asset('assets/images/dansgecesi.png',
                                      width: 80,
                                      height: 120,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(1, 10, 1, 5),
                                          child: Text(
                                            'Dans Festivali',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              shadows: [Shadow(
                                                blurRadius: 11.0,
                                                color: Colors.grey,
                                                offset: Offset(5.0, 5.0),),],
                                              fontFamily: 'OpenSans',
                                              fontSize: 25,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(1, 5, 1, 1),
                                          child: Text(
                                            'İzmirde 02/08/22’deki dans'
                                                '\n festivalinde Salsa ve Bachata bilen'
                                                '\n bir dans partneri arıyorum.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                shadows: [Shadow(
                                                  blurRadius: 7.0,
                                                  color: Colors.grey,
                                                  offset: Offset(3.0, 3.0),),],
                                                fontFamily: 'OpenSans',
                                                fontSize: 15,
                                                color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(1, 5, 1, 5),
                                          child: Text(
                                            'Etkinliği oluşturan kişi AyseCelik',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              shadows: [Shadow(
                                                blurRadius: 13.0,
                                                color: Colors.grey,
                                                offset: Offset(3.0, 3.0),),],
                                              fontFamily: 'OpenSans',
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent,
                              ),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color:const Color(0xA8A8CD4C),
                                    ),
                                    child: Image.asset('assets/images/dansgecesi.png',
                                      width: 80,
                                      height: 120,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(1, 10, 1, 5),
                                          child: Text(
                                            'Dans Partisi',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              shadows: [Shadow(
                                                blurRadius: 11.0,
                                                color: Colors.grey,
                                                offset: Offset(5.0, 5.0),),],
                                              fontFamily: 'OpenSans',
                                              fontSize: 25,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(1, 5, 1, 1),
                                          child: Text(
                                            'İstanbulda 03/09/22’deki dans'
                                                '\n partisinde Salsa ve Bachata bilen'
                                                '\n bir dans partneri arıyorum.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                shadows: [Shadow(
                                                  blurRadius: 7.0,
                                                  color: Colors.grey,
                                                  offset: Offset(3.0, 3.0),),],
                                                fontFamily: 'OpenSans',
                                                fontSize: 15,
                                                color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(1, 5, 1, 5),
                                          child: Text(
                                            'Etkinliği oluşturan kişi MuratDemir',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              shadows: [Shadow(
                                                blurRadius: 13.0,
                                                color: Colors.grey,
                                                offset: Offset(3.0, 3.0),),],
                                              fontFamily: 'OpenSans',
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFFFFF0),
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Keşfet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Mesajlar',
          ),
        ],
        selectedItemColor: const Color(0xA8A8CD4C),
        selectedFontSize: 15,
        unselectedItemColor: const Color(0xA8A8CD4C),
        unselectedFontSize: 15,
      ),
    );
  }
}
