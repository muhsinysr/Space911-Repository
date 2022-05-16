import 'package:flutter/material.dart';
import 'package:meetime_app/accountpage/account.dart';
import 'package:meetime_app/homepageavatarpage/home_page.dart';
import 'package:meetime_app/messagepage/message.dart';
import 'package:meetime_app/searchpage/search.dart';

import 'constant/colors.dart';

class HomeNavigatePage extends StatefulWidget {
  HomeNavigatePage({Key? key}) : super(key: key);

  @override
  State<HomeNavigatePage> createState() => _HomeNavigatePageState();
}

class _HomeNavigatePageState extends State<HomeNavigatePage> {
    int _selectedIndex = 0;

  void _clickChangeBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    MessagePage(),
    AccountPage()
  ];


  @override
  Widget build(BuildContext context) {
    return  
    //Navigation Bar Kısmı
    Scaffold(
      drawer: Drawer(backgroundColor: Colors.black),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _clickChangeBar,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorsPalette.pinkOpacityPalette80,
          unselectedItemColor: ColorsPalette.blackShadowPlatte,
          backgroundColor: ColorsPalette.whitePalette,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Arama"),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: "Mesaj"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ]),
    );
  }
}

