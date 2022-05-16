import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetime_app/swap_screen_into.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.white
      ),
      //GEÇİŞLERİN YAPILDIĞI SAYFAYA GİDİYOR
      home: SwapScreenInto(),
      
    );
  }
}
