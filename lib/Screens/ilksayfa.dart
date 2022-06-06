import 'package:flutter/material.dart';
import 'package:meetwith/Screens/anasayfa.dart';
import 'package:meetwith/Screens/etkinlikolusturma.dart';
import 'package:meetwith/Screens/mesajlasma.dart';
import 'package:meetwith/ayarlar/Settings/SettingsPage.dart';





class ilksayfa extends StatefulWidget {
  const ilksayfa({Key? key}) : super(key: key);


  @override
  State<ilksayfa> createState() => _ilksayfaState();
}


class _ilksayfaState extends State<ilksayfa> {
  int _selectedIndex=0;
  PageController pageController= PageController();
  void bottomButton(int index){
    setState(() {
      _selectedIndex=index;
    });
    pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 240, 1),
      body: PageView(
        controller: pageController,
      children: [
        const anasayfa(),
        const  etkinlikolusturma(),
        const mesajlasma(),
        const SettingsPage(),
      ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: const Color.fromRGBO(255, 255, 240, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded,),
            label: 'Oluştur',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,),
            label: 'Mesajlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,),
            label: 'Ayarlar',
          ),

        ],
          selectedItemColor: const Color.fromRGBO(112, 45, 210, 1),
        selectedIconTheme: IconThemeData(size: 35),
        selectedFontSize: 15,
        unselectedFontSize: 0,
        unselectedItemColor:const Color.fromRGBO(168, 205, 76, 1),
        onTap:bottomButton ,
      ),

    );
  }
}
