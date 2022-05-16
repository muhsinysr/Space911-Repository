import 'package:flutter/material.dart';
import 'package:meetime_app/constant/colors.dart';
import 'package:meetime_app/constant/picture.dart';
import 'package:meetime_app/constant/text_style.dart';
import 'package:meetime_app/homepageavatarpage/home_page_avatar.dart';
import 'package:meetime_app/homepageavatarpage/home_page_avatar_button.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 List<HomePageAvatar> avatarbuttons = [
   HomePageAvatar("Kodlama", 'assets/icondeveloper.jpg'),
   HomePageAvatar("Dans",'assets/icondancer.jpg'),
   HomePageAvatar("Fotoğraf",  'assets/iconphotographer.jpg'),
   HomePageAvatar("Müzik",  'assets/iconmusic.jpg'),
   HomePageAvatar("Resim", 'assets/iconpainting.jpg')
 ];


  @override
  Widget build(BuildContext context) {
    return 
    //HomePage Sayfası
    SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(children: [
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(iconfirstavatar),
                radius: 33,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hoş Geldin", style: TextStyleMeetime.blacktext16),
                Text("Bugün nasılsın?", style: TextStyleMeetime.black38text16),
              ],
            )
          ],
        ),
        Container(
          width: double.infinity,
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              //Scroll Butonların yazıldığı alan
              HomePageAvatarButton(avatarbuttons[0], context),
              HomePageAvatarButton(avatarbuttons[1], context),
              HomePageAvatarButton(avatarbuttons[2], context),
              HomePageAvatarButton(avatarbuttons[3], context),
              HomePageAvatarButton(avatarbuttons[4], context),
            ],
          ),
        ),
        Center(
          child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Text("Seninle tanışmak güzel, aramıza Hoş Geldin, Lütfen yukarıdaki seçeneklerden ilgi alanını seçerek, bizimle paylaşır mısın? Yeni dostlukların için şimdiden çok heyecanlıyız. İyi Eğlenceler.",style: TextStyleMeetime.black38text20, ),
        )),
      ]),

    ));
  }
}
