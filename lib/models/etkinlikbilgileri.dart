import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class etkinlikbilgileri{
String? etkinlikturu;
TimeOfDay? saat;
String? tarih;
String? yer;

etkinlikbilgileri({this.etkinlikturu, this.saat, this.tarih, this.yer});

factory etkinlikbilgileri.fromSnapshot(DocumentSnapshot snapshot){
return etkinlikbilgileri(
    etkinlikturu :snapshot['etkininliktürü'],
    saat:snapshot['saat'],
  tarih:snapshot['tarih'],
  yer:snapshot['yer'],


);

}

}