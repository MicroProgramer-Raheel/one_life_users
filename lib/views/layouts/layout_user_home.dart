import 'package:card_swiper/card_swiper.dart';
import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_life_users/helpers/helpers.dart';
import 'package:one_life_users/views/screens/screen_user_profile.dart';
import 'package:one_life_users/views/screens/screen_user_profile_public.dart';
import 'package:one_life_users/widgets/asset_icon.dart';

import 'item_user_event.dart';

class LayoutUserHome extends StatefulWidget {
  const LayoutUserHome({Key? key}) : super(key: key);

  @override
  _LayoutUserHomeState createState() => _LayoutUserHomeState();
}

class _LayoutUserHomeState extends State<LayoutUserHome> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColorBlue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Image.asset("assets/images/Logo One Life.png",),
        backgroundColor: backGroundColorBlue,
        actions: [
          GestureDetector(
            onTap: (){
           Get.to(ScreenUserProfile());
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFCFCFD),width: 0.3),
                shape: BoxShape.circle
              ),
              child: AssetIcon(path: "assets/svg/setting.svg",),),
          ),
          GestureDetector(
            onTap: (){
             Get.to(ScreenUserProfilePublic());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
            height: 35.sp,
              width: 35.sp,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFCFCFD),width: 0.3),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(userPlaceHolder)
                )
              ),),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text("Explore your nearest ",style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white
              ),),
              SizedBox(width: 2.h,),
              AssetIcon(path: "assets/svg/text.svg")
            ],),
          RichText(text: TextSpan(
            text: "Event ",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Colors.white
            ),
            children: [
              TextSpan(text: "Easily",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white
              ),)
            ]
          )),
          Swiper(
            itemBuilder: (BuildContext context, int index) {
              return ItemUserEvent();
            },
            index: selectedIndex,
            onIndexChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },

            itemHeight: Get.height * 0.7,
            itemWidth: Get.width,
            itemCount: 1,

            containerHeight: Get.height * 0.8,
            layout: SwiperLayout.TINDER,
          ),

        ],),
      ),
    );
  }
}
