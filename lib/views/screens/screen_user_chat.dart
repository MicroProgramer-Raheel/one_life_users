
import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:chat_bubbles/bubbles/bubble_special_two.dart';
import 'package:chat_bubbles/date_chips/date_chip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

import '../../helpers/helpers.dart';
class ScreenUserChat extends StatefulWidget {
  const ScreenUserChat({Key? key}) : super(key: key);

  @override
  State<ScreenUserChat> createState() => _ScreenUserChatState();
}

class _ScreenUserChatState extends State<ScreenUserChat> {
  final now = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColorBlueDark,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,), onPressed: () {
            Get.back();
        },


        ),
        backgroundColor: backGroundColorPink,
        title: Image.asset("assets/images/Logo One Life.png"),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(userPlaceHolder),
            radius: 25,
          ),
        )],
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
               child: SingleChildScrollView(child: Column(children: [

                 BubbleSpecialOne(
                   text: 'bubble special tow with tail bubble special tow with tail bubble special tow with tail',
                   isSender: true,
                   color: backGroundColorBlue,
                   textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                   sent: true,
                 ),
                 BubbleSpecialOne(
                   text: 'bubble special tow with tail bubble special tow with tail bubble special tow with tail',
                   isSender: true,
                   color: backGroundColorBlue,
                   textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                   sent: true,
                 ),
                 BubbleSpecialOne(
                   text: 'bubble special tow with tail bubble special tow with tail bubble special tow with tail',
                   isSender: true,
                   color: backGroundColorBlue,
                   textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                   sent: true,
                 ),
                 DateChip(
                   date: now,
                   color: backGroundColorPink,
                 ),
                 BubbleSpecialOne(
                   textStyle: TextStyle(
                     color: Colors.white,
                       fontSize: 15,fontWeight: FontWeight.w300
                   ),
                   text: 'bubble special tow with tail bubble special tow with tail bubble special tow with tail',
                   isSender: false,
                   color: backGroundColorBlue,
                   sent: true,
                 ),
                 DateChip(
                   date: now,
                   color: backGroundColorPink,

                 ),
                 BubbleSpecialOne(
                   textStyle: TextStyle(
                       color: Colors.white,
                       fontSize: 15,fontWeight: FontWeight.w300
                   ),
                   text: 'bubble special tow with tail bubble special tow with tail bubble special tow with tail',
                   isSender: false,
                   color: backGroundColorBlue,
                   sent: true,
                 ),
                 BubbleSpecialOne(
                   textStyle: TextStyle(
                       color: Colors.white,
                       fontSize: 15,fontWeight: FontWeight.w300
                   ),
                   text: 'bubble special tow with tail bubble special tow with tail bubble special tow with tail',
                   isSender: false,
                   color: backGroundColorBlue,
                   sent: true,
                 ),
                 BubbleSpecialOne(
                   textStyle: TextStyle(
                       color: Colors.white,
                       fontSize: 15,fontWeight: FontWeight.w300
                   ),
                   text: 'bubble special tow with tail bubble special tow with tail bubble special tow with tail',
                   isSender: false,
                   color: backGroundColorBlue,
                   sent: true,
                 ),

                 DateChip(
                   date: now,
                   color: backGroundColorPink,
                 ),
                 BubbleSpecialOne(
                   textStyle: TextStyle(
                       color: Colors.white,
                       fontSize: 15,fontWeight: FontWeight.w300
                   ),
                   text: 'bubble special tow with tail bubble special tow with tail bubble special tow with tail',
                   isSender: false,
                   color: backGroundColorBlue,
                   sent: true,
                 ),
                 DateChip(
                   date: now,
                   color: backGroundColorPink,

                 ),
                 BubbleSpecialOne(
                   textStyle: TextStyle(
                       color: Colors.white,
                       fontSize: 15,fontWeight: FontWeight.w300
                   ),
                   text: 'bubble special tow with tail bubble special tow with tail bubble special tow with tail',
                   isSender: false,
                   color: backGroundColorBlue,
                   sent: true,
                 ),
                 BubbleSpecialOne(
                   textStyle: TextStyle(
                       color: Colors.white,
                       fontSize: 15,fontWeight: FontWeight.w300
                   ),
                   text: 'bubble special tow with tail bubble special tow with tail bubble special tow with tail',
                   isSender: false,
                   color: backGroundColorBlue,
                   sent: true,
                 ),
                 BubbleSpecialOne(
                   textStyle: TextStyle(
                       color: Colors.white,
                       fontSize: 15,fontWeight: FontWeight.w300
                   ),
                   text: 'bubble special tow with tail bubble special tow with tail bubble special tow with tail',
                   isSender: false,
                   color: backGroundColorBlue,
                   sent: true,
                 ),


               ],),),
          )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              color: backGroundColorBlue,

            ),
            child: Row(children: [
            Expanded(
              child: TextField(
                maxLines: 6,
                minLines: 1,
                cursorRadius: Radius.circular(5),
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,

                // controller: controller,
                decoration: InputDecoration(
                  hintText: 'Type here....',
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                  fillColor: backGroundColorPink,
                  filled: true,

                  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(

                  shape: BoxShape.circle,
                  color: backGroundColorBlueLight,
                ),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined,color: backGroundColorPink,)))
          ],),)
        ],
      ),

    );
  }
}
