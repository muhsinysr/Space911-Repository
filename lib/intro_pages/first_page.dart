import 'package:flutter/material.dart';
import 'package:meetime_app/constant/picture.dart';
import 'package:meetime_app/constant/text_style.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(meetimeLogo, width: 500, height: 200, )),
            Text("MEETİME", style: TextStyleMeetime.headline33,),
            sizeBox10(),
            Text("Hoş Geldiniz", style: TextStyleMeetime.headline33,),
            sizeBox10(),
            Text("Birlite Eğlen, Birlikte Öğren, Network Sağla", style: TextStyleMeetime.headline16subtitle,)
          ],
        ),
    );
  }

  SizedBox sizeBox10() => const SizedBox(height: 10);
}