import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:meetime_app/constant/colors.dart';
import 'package:meetime_app/constant/text_style.dart';

import '../constant/picture.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final urlImageCarousels = [
    'assets/1Avatar.jpg',
    'assets/2Avatar.jpg',
    'assets/3Avatar.jpg',
    'assets/4Avatar.jpg',
    'assets/5Avatar.jpg',
    'assets/6Avatar.jpg',
    'assets/7Avatar.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    meetimeLogo,
                    height: 100,
                    width: 40,
                  ),
                ],
              ),
               Container(
                 padding: EdgeInsets.only(
                   left: 25, right: 25
                 ),
                 child: Center(
                   child: Text("Seninle Benzer İlgi Alanlarına Sahip Kişileri Bulmaya Hazır Mısın?", style: TextStyleMeetime.blacktext20, textAlign: TextAlign.center,),),
               ),
              const SizedBox(height: 10),
              Center(child: Text("Hadi Başlayalım", style: TextStyleMeetime.blacktext20)),
              const SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 370,
                  width: 265,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: ColorsPalette.greyOpacityPalette50,
                          offset: const Offset(4, 4),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          colors: [
                            ColorsPalette.greyPalette200,
                            ColorsPalette.whitePalette
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
              ),
            ],
          )),
    );
  }
}
