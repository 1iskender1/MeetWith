import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../firebaseservisleri/etkinlikbilgilerservis.dart';

class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);

  @override
  State<anasayfa> createState() => _anasayfaState();
}
etkinlikbilgileriservis _etkinlik=etkinlikbilgileriservis();

class _anasayfaState extends State<anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Column(

        children:<Widget>[
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width:200,child:Image.asset('yazivelogo/yazi.png') ,),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
            Text(
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
          StreamBuilder(
            stream: _etkinlik.bilgiler(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
              return !snapshot.hasData ? const CircularProgressIndicator(color:Color.fromRGBO(168, 205, 76, 1) ,)
                  :Flexible(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context,index){
                    DocumentSnapshot etkinlikler=snapshot.data!.docs[index];
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color:const Color.fromRGBO(168, 205, 76, 1) ,
                        ),
                        height: 150,
                        child: Row(children: [
                          const Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: CircleAvatar(radius: 50,backgroundImage: AssetImage('assets/images/meetwithboth.jpeg'),),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: const Text('Etkinlik Yeri',
                                    style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,

                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                      "${etkinlikler['yer']}",
                                      style:const TextStyle(color:Colors.white,)

                                  ),
                                ),

                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [

                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Row(
                                            children: [
                                              const Text('Etkinlik Türü: ',
                                                style:TextStyle(color:Colors.white,
                                                  fontWeight: FontWeight.bold,),),
                                              Text('${etkinlikler['etkinliktürü']}',
                                                  style:TextStyle(color:Colors.white,)
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Row(
                                            children: [
                                              const Text('Etkinlik Tarihi: ',style:TextStyle(color:Colors.white,
                                                fontWeight: FontWeight.bold,),),
                                              Text('${etkinlikler['tarih']}',
                                                  style:TextStyle(color:Colors.white,))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Row(
                                            children: [
                                              const Text('Etkinlik Zamanı: ',
                                                  style:TextStyle(color:Colors.white,
                                                    fontWeight: FontWeight.bold,)
                                              ),
                                              Text('${etkinlikler['saat']}',
                                                style:TextStyle(color:Colors.white,),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          )
                        ],),
                      ),
                    );
                  },



                ),
              );
            },
          ),



        ]
    );
  }
}
