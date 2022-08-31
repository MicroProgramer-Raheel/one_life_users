import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_life_users/views/layouts/item_user_event_list.dart';
import 'package:one_life_users/views/screens/screen_user_profile_public.dart';

import '../../helpers/helpers.dart';

class LayoutUserFevorites extends StatefulWidget {
  const LayoutUserFevorites({Key? key}) : super(key: key);

  @override
  _LayoutUserFevoritesState createState() => _LayoutUserFevoritesState();
}

class _LayoutUserFevoritesState extends State<LayoutUserFevorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: bg2Color,
        child: Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            height: Get.height*0.28,
            width: Get.width,
            color: backGroundColorPink,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/Logo One Life.png",width: Get.width*0.3,),
                      GestureDetector(
                        onTap: (){
                          Get.to(ScreenUserProfilePublic());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2,color: Colors.white)
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            child: Image.asset("assets/images/avatar (0).png",fit: BoxFit.contain,),
                          ),
                        ),
                      )
                    ],),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: RichText(text: TextSpan(text: "All ",
                        style: TextStyle(fontSize: 16),
                        children: [
                          TextSpan(text: "Favorite ",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700)),
                          TextSpan(text: "Events",style: TextStyle(fontSize: 16,)),

                        ]),),
                  )
                ],),
            ),
          ),
          Positioned(
              bottom: 0,
              top: Get.height*0.18,
              left: 15,
              right: 15,
              child: SingleChildScrollView(
                child: Column(children: [
                  CustomListviewBuilder( itemCount: 4, scrollDirection: CustomDirection.vertical, itemBuilder: (BuildContext context, int index) {
                    return ItemUserEventList();

                  },)
                ],),
              ))
        ],),
      ),
    );
  }
}
