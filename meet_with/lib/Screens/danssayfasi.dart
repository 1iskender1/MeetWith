import 'package:flutter/material.dart';
import 'package:meetwith/Screens/etkinliklersayfasi.dart';

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
        automaticallyImplyLeading: false,
        leading: IconButton(
          iconSize: 50,
          color: Colors.red,
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 50,
          ),
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(builder: (context){
              return etkinliklersayfasi();
            }));
          },
        ),
        title: Image.asset('imagess/Ev.png',
          width: 300,
          height: 100,
          fit: BoxFit.fill,
        ),
        actions: const [],
        centerTitle: true,
        elevation: 0,
      ),
      body:
      // Generated code for this Column Widget...
      Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.all(5),
            child: // Generated code for this Column Widget...
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(30, 40, 5, 20),
                      child: Container(
                        width: 170,
                        height: 170,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Image.asset(
                            'imagess/dans.png',
                            width: 170,
                            height: 170,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: const Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Text(
                              'Dans',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 20),
                      child: Container(
                        width: 100,
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Color(0xA8A8CD4C),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Image.asset(
                            'imagess/dansgecesi.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 10, 20),
                      child: Container(
                        width: 250,
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Color(0xA8A8CD4C),
                        ),
                        child: // Generated code for this Column Widget...
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                              child: Text(
                                'Dans Gecesi',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 5, 10),
                              child: Text(
                                'Dans gecesinde Salsa bilen bir dans partneri arıyorum.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                              child: Text(
                                'Etkinliği oluşturan: SalihTekin1',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Colors.red,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        )

                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 20),
                      child: Container(
                        width: 100,
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Color(0xA8A8CD4C),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Image.asset(
                            'imagess/dansfestival.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 10, 20),
                      child: Container(
                          width: 250,
                          height: 150,
                          decoration: const BoxDecoration(
                            color: Color(0xA8A8CD4C),
                          ),
                          child: // Generated code for this Column Widget...
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: const <Widget>[
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                                child: Text(
                                  'Dans Kulübü',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 5, 10),
                                child: Text(
                                  'Dans Kulübüne gidebileceğim birini arıyorum.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                                child: Text(
                                  'Etkinliği oluşturan: AyşeKoç',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
