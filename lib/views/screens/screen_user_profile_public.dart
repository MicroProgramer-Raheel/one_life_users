import 'package:card_swiper/card_swiper.dart';
import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/helpers.dart';
import '../../widgets/asset_icon.dart';

class ScreenUserProfilePublic extends StatefulWidget {
  const ScreenUserProfilePublic({Key? key}) : super(key: key);

  @override
  _ScreenUserProfilePublicState createState() =>
      _ScreenUserProfilePublicState();
}

class _ScreenUserProfilePublicState
    extends State<ScreenUserProfilePublic> {
  bool isChecked=true;
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        child: Stack(
          children: [
            Column(
            children: [
              Container(
                color: backGroundColorBlue,
                height: Get.height*0.4,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/bg_profile.png")
                        )
                      ),

                    );
                  },
                  pagination: new SwiperPagination(),

                  itemCount: 3,
                  containerWidth: Get.width,
                  containerHeight: Get.height*35,
                  layout: SwiperLayout.DEFAULT,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  color: backGroundColorBlueLight,
                  child: SingleChildScrollView(
                    child: Column(children: [
                    Row(
                      children: [
                        Text("Organization Name",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600),),
                        Checkbox(value: isChecked, onChanged: (value){
                          isChecked=value!;
                        },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),

                        )
                      ],
                    ),
                    Row(
                      children: [
                        AssetIcon(path: "assets/svg/svg_location.svg"),
                        SizedBox(width: 1.h,),
                        Text("Meherpur, Brasel Swtzerland",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),),

                      ],
                    ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          color: bg2Color,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [BoxShadow(color: backGroundColorBlueLight,blurRadius: 5)]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("About Us",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),),
                          Text("The profile must look like the picture 2. When you click on the profile"
                              " picture in the messaging system, the page opens and you see a short "
                              "description with the user's information such as his city and age. You have to be able to put a maximum of 5 photos that you can scroll through",
                          style: TextStyle(fontSize: 11,color: Color(0xFF9D9FAF)),
                          )
                        ],),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: bg2Color,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(color: backGroundColorBlueLight,blurRadius: 5)]
                        ),
                        child: Row(children: [
                        AssetIcon(path: "assets/svg/svg_contact.svg"),
                          SizedBox(width: 1.h,),
                          Text("+880 7569 18268",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white),)
                      ],),),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: bg2Color,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(color: backGroundColorBlueLight,blurRadius: 5)]
                        ),
                        child: Row(children: [
                        AssetIcon(path: "assets/svg/svg_email.svg"),
                          SizedBox(width: 1.h,),

                          Text("Mathewjhon123@fiverr.com",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white),)
                      ],),),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: Color(0xFFE9ACC2).withOpacity(0.1  ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(color: backGroundColorBlueLight,blurRadius: 5)]
                        ),
                        child: Row(children: [
                        AssetIcon(path: "assets/svg/close.svg"),
                          SizedBox(width: 1.h,),

                          Text("Report this profile",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: backGroundColorPink),)
                      ],),),
                ],),
                  ),),
              )
            ],
          ),
          Positioned(
              top: 0,
              left: 5,
              child: SafeArea(
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    ),),

                    Text(
                      "Back to Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ))
          ],
        ),
      ),
    );
  }
}
