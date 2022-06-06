import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class etkinlikolusturma extends StatefulWidget {
  const etkinlikolusturma({Key? key}) : super(key: key);

  @override
  State<etkinlikolusturma> createState() => _etkinlikolusturmaState();

}
final firestore=FirebaseFirestore.instance;
bool _kontrolyer = true;
final _yer = TextEditingController();
bool _kontorletyer = false;
DateTime selectedDate=DateTime.now();
TimeOfDay selectedTime=TimeOfDay.now();
String dropdownvalue = 'Müzik';
var items = [
  'Müzik',
  'Dans',
  'Sinema',
  'Konser',
  'Anlık etkinlikler',
];



class _etkinlikolusturmaState extends State<etkinlikolusturma> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate=picked;
      });
    }
  }
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedd = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (pickedd != null && pickedd != selectedTime) {
      setState(() {
        selectedTime=pickedd;
      });
    }
  }


  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
        child: Column(
            children:<Widget>[
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width:200,child:Image.asset('yazivelogo/yazi.png') ,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                Text(
                  'Sen de etkinlik oluşturup bu',
                  style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

              ],),
              const Padding(
                padding: EdgeInsets.only(right:10.0),
                child: Text('dünyaya katılabilirsin...',
                  style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: _yer,
                  decoration: InputDecoration(
                      focusedBorder:const  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      errorText: _kontorletyer? 'Boş bırakılamaz...' : null,
                      labelText: "  Yer Bildirin",
                      labelStyle: const TextStyle(color: Colors.black),
                      hintText: " Örn: Ankara Kızılay AVM Starbucks",
                      filled: true,
                      fillColor: Colors.white
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color:const Color.fromRGBO(168, 205, 76, 1) ,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Gün-Ay-Yıl',
                            style:TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1),
                            child: Container(height: 1,
                            color: Colors.black,),
                          ),
                          Text(
                            '${selectedDate.day}-${selectedDate.month}-${selectedDate.year}',
                            style: const TextStyle(fontSize:20 ),),
                          MaterialButton(
                              color:const Color.fromRGBO(112, 45, 210, 1),
                              textColor: Colors.white,
                              onPressed: (){_selectDate(context);},
                              child: const Text('Tarih seçin'),
                          ),
                        ],
                      )),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color:const Color.fromRGBO(168, 205, 76, 1) ,),
                  child: Column(
                    children: [
                      const Text(
                        'Saat',
                        style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Container(height: 1,
                          color: Colors.black,),
                      ),
                      Text(selectedTime.format(context),
                        style: const TextStyle(fontSize: 20),),
                      MaterialButton(
                          color:const Color.fromRGBO(112, 45, 210, 1),
                          textColor: Colors.white,
                          onPressed: (){_selectTime(context);},
                          child: Text('Saat seçin')),
                    ],
                  ),
                ),

            ]
        ),
             const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color:const Color.fromRGBO(168, 205, 76, 1) ,),
                    child: Column(
                      children: [
                        const Text(
                          'Etkinlik Türü',
                          style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1),
                          child: Container(height: 1,
                            color: Colors.black,),
                        ),
                        const SizedBox(height: 10,),
                        DropdownButton(
                          underline: Container(
                            height: 2,
                            color:  const Color.fromRGBO(112, 45, 210, 1),
                          ),
                          dropdownColor: const Color.fromRGBO(112, 45, 210, 1),
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down,color: Color.fromRGBO(112, 45, 210, 1),),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items,
                              style: const TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            const SizedBox(height: 20,),
            MaterialButton(
              color:const Color.fromRGBO(168, 205, 76, 1),
              onPressed: () async{
                firestore.collection('etkinlikbilgileri')
                    .doc().set({
                  'yer':_yer.text,
                  'tarih':'${selectedDate.day}-${selectedDate.month}-${selectedDate.year}',
                  'saat':selectedTime.format(context),
                  'etkinliktürü':dropdownvalue,
                });
                final snackBar = SnackBar(
                  content: const Text('Etkinlik Oluşturuldu!'),
                  action: SnackBarAction(
                  label: 'Geri',
                   onPressed: () {

                     },
                    ),
                 );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                     },

              child:const  Text('Oluştur',
              style: TextStyle(color: Colors.white),
              ),
            ),

        ]
        ),
      );



  }
}
