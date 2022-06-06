import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meetwith/Screens/etkinlikolusturma.dart';

class etkinlikbilgileriservis{

  Stream<QuerySnapshot> bilgiler(){
    var ref=firestore.collection('etkinlikbilgileri').snapshots();
    return ref;

  }
  Future<void> bilgilerisil(String docId) async {
    var ref=firestore.collection('etkinlikbilgileri').doc(docId).delete();
    return ref;

  }
}