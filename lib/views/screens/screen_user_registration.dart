import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_life_users/views/screens/screen_user_add_more_details.dart';

import '../../helpers/helpers.dart';
import '../../widgets/asset_icon.dart';
import '../../widgets/my_button.dart';
import '../../widgets/my_input_field.dart';

class ScreenUserRegistration extends StatefulWidget {
  const ScreenUserRegistration({Key? key}) : super(key: key);

  @override
  _ScreenUserRegistrationState createState() =>
      _ScreenUserRegistrationState();
}

class _ScreenUserRegistrationState
    extends State<ScreenUserRegistration> {
  bool isCheck=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColorBlueDark,
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            color: Color(0xFF1F2240),
            image: DecorationImage(
          image: AssetImage("assets/images/img_reg.png")
        )),
        child: Stack(children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
                width: Get.width,
                child: Image.asset("assets/images/img_reg.png",fit: BoxFit.cover,)),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,

            top: 125,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: backGroundColorBlueDark,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  Text("Join Fenua Xlife",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("Please enter your details to join Fenua Xlife",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Color(0xFF999BAC)),)),
                  MyInputField(
                    prefix: AssetIcon(path: "assets/svg/img_sms.svg",),
                    showBorder: true,
                    text: 'Mathewjhon123@fiverr.com',
                    label: "Your Email",
                    textStyle: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  MyInputField(
                    prefix: AssetIcon(path: "assets/svg/svg_user.svg",

                    ),
                    showBorder: true,
                    text: 'Khondokar Likhon',
                    label: "First Name ",
                    textStyle: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  MyInputField(
                    prefix: AssetIcon(path: "assets/svg/svg_user.svg",),
                    showBorder: true,
                    text: 'XihankhonLi',
                    label: "Sur Name",
                    textStyle: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  MyInputField(
                    prefix: AssetIcon(path: "assets/svg/svg_contact.svg",),
                    showBorder: true,
                    text: '+92 76754765',
                    label: "Phone Number",
                    textStyle: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  MyInputField(
                    prefix: AssetIcon(path: "assets/svg/location.svg",),
                    showBorder: true,
                    label: "Address",
                    text: '11111',
                    textStyle: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  MyInputField(
                    prefix:  AssetIcon(path: "assets/svg/svg_lock.svg",color: Colors.white,),
                    showBorder: true,
                    text: '11111',
                    label: "Password",
                    isPasswordField: true,
                    textStyle: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  CustomCheckboxListTile(
                    fillColor: Colors.green,
                    checkColor: backGroundColorBlueLight,
                    value: isCheck,
                    onChange: (value){
                      isCheck=value!;
                    },
                    rightCheck: false,
                    title: RichText(text: TextSpan(
                        text: "Agree with Fenua Xlife ",
                        style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            text: "Tearms and Services",
                            style: TextStyle(color: backGroundColorPink,fontSize: 11,fontWeight: FontWeight.w700),

                          ),

                        ]
                    ),),
                  ),
                  MyButton(
                    color: Color(0xFFFF88B6),
                    image: Icon(Icons.arrow_forward,size: 24,color: Colors.white,),
                      icon: Text("Continue",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),),
                      text: "", onPressed: (){
                      Get.to(ScreenUserAddMoreDetails());
                  }),
                  Text.rich(TextSpan(
                      text: "Already a member? ",
                      children: [
                        TextSpan(
                          text: " Connect directly",
                          style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFFFF88B6)),
                          recognizer: TapGestureRecognizer()..onTap = () => nextScreen(),
                        ),
                      ],
                      style: normal_h3Style.copyWith(color: Colors.white,fontWeight: FontWeight.w400))),
                ],),
              ),
            ),
          )

        ],),
      ),
    );
  }
  void nextScreen() {
    // Get.to(ScreenOrganizerOtpVerification());
  }
}
