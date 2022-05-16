
import 'package:flutter/material.dart';
import 'package:meetime_app/constant/colors.dart';
import 'package:meetime_app/constant/text_style.dart';

import '../constant/picture.dart';
import 'message_model.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
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
             Center(child: Text("Mesajlar", style: TextStyleMeetime.black38text20,)),
            Expanded(
              child: Container(

                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  child: ListView.builder(
                    itemCount: chats.length,
                    itemBuilder: (BuildContext context, index) {
                      final Message chat = chats[index];
                      return Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: chat.unread ? Colors.pink.shade50 : Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage(chat.sender.imageAsset),
                            ),
                            const SizedBox(height: 5.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chat.sender.name, style: TextStyleMeetime.black38text20
                                ),
                                const SizedBox(height: 5.0),
                                Container(
                                  width: MediaQuery.of(context).size.width *0.45,
                                  child: Text(chat.text,
                                  style: TextStyleMeetime.blacktext16,
                                  overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                            Container(
                             padding: const EdgeInsets.only(right: 1.0),
                             child: Column(
                              children: [
                                Text(chat.time, style: TextStyleMeetime.blacktext14,),
                             SizedBox(height: 5.0,),
                             chat.unread
                                ? Container(
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.pink.shade300,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('Yeni', style: TextStyleMeetime.whitetext14),
                                  )
                               : SizedBox.shrink(),
                                ],
                              ),
                           )
                          ],
                        ),
                      );
                   }
                              ),
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}