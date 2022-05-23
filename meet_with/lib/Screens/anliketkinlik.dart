import 'package:flutter/material.dart';


class anliketkinlik extends StatefulWidget {
  const anliketkinlik({Key? key}) : super(key: key);


  @override
  State<anliketkinlik> createState() => _anliketkinlikState();
}

class _anliketkinlikState extends State<anliketkinlik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(255, 255, 240, 1),
          child: Column(
            children:<Widget>[
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width:200,child:Image.asset('yazivelogo/yazi.png') ,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.settings))
              ],),
              Row(children: [
                IconButton(onPressed: (){},
                    icon: Icon(Icons.arrow_back,color:Color.fromRGBO(112, 45, 210, 1) ,),
                ),
               SizedBox(width: 10,),
               const  Text(
                  'Hoşunuza gidebilecek yeni bir',
                  style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

              ],),
              const Text('etkinlik var!',
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:Color.fromRGBO(168, 205, 76, 1) ,
                                ),
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(radius: 40,backgroundColor: Color.fromRGBO(255, 255, 240, 1),),
                                  ),
                                  Text('Etkinlik bilgileri')
                                ],),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:Color.fromRGBO(168, 205, 76, 1) ,
                                ),
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(radius: 40,backgroundColor: Color.fromRGBO(255, 255, 240, 1),),
                                  ),
                                  Text('Etkinlik bilgileri')
                                ],),),
                            ),
                          ),
                        ],
                      ),Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:Color.fromRGBO(168, 205, 76, 1) ,
                                ),
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(radius: 40,backgroundColor: Color.fromRGBO(255, 255, 240, 1),),
                                  ),
                                  Text('Etkinlik bilgileri')
                                ],),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:Color.fromRGBO(168, 205, 76, 1) ,
                                ),
                                height: 100,
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(radius: 40,backgroundColor: Color.fromRGBO(255, 255, 240, 1),),
                                  ),
                                  Text('Etkinlik bilgileri')
                                ],),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:Color.fromRGBO(168, 205, 76, 1) ,
                                ),
                                height: 100,
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(radius: 40,backgroundColor: Color.fromRGBO(255, 255, 240, 1),),
                                  ),
                                  Text('Etkinlik bilgileri')
                                ],),
                              ),
                            ),
                          ),
                        ],
                      ),Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:Color.fromRGBO(168, 205, 76, 1) ,
                                ),
                                height: 100,
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(radius: 40,backgroundColor: Color.fromRGBO(255, 255, 240, 1),),
                                  ),
                                  Text('Etkinlik bilgileri')
                                ],),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
               ]
              ),

          ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(255, 255, 240, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,),
            label: 'Keşfet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,),
            label: 'Mesajlar',
          ),

        ],
          selectedItemColor: Color.fromRGBO(112, 45, 210, 1),
        selectedFontSize: 20,
        unselectedFontSize: 14,
        unselectedItemColor: Color.fromRGBO(168, 205, 76, 1),
      ),

    );
  }
}
