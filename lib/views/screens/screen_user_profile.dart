import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_life_users/views/screens/screen_user_map_view.dart';
import 'package:one_life_users/views/screens/screen_user_premium_users.dart';
import 'package:one_life_users/views/screens/screen_user_profile_q_r_code.dart';

import '../../helpers/helpers.dart';
import '../../widgets/asset_icon.dart';
import '../../widgets/my_input_field.dart';

class ScreenUserProfile extends StatefulWidget {
  const ScreenUserProfile({Key? key}) : super(key: key);

  @override
  _ScreenUserProfileState createState() => _ScreenUserProfileState();
}

class _ScreenUserProfileState extends State<ScreenUserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        color: Color(0xFF0A0E37),
        child: Stack(
          children: [
            Container(
              height: Get.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg_profile.png"),
                      fit: BoxFit.cover)),
            ),
            Positioned(
                top: 0,
                left: 15,
                right: 15,
                bottom: 0,
                child: SafeArea(
                  child: Container(
                    color: Colors.white.withOpacity(0.01),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        Row(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              height: Get.height * 0.1,
                              width: Get.width * 0.25,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3, color: Colors.white),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          "assets/images/avatar (0).png"))),

                            ),
                            SizedBox(
                              width: 2.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jonathan Hipe",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Text(
                                  "New User",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF0A0E37),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: backGroundColorBlue.withOpacity(.1),
                                            blurRadius: 1)
                                      ]),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text(
                                          "Personal Information",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                        trailing: AssetIcon(
                                          path: "assets/svg/edit-2.svg",
                                        ),
                                      ),
                                      MyInputField(

                                        fillColor: backGroundColorBlueDark.withOpacity(0.6),
                                        prefix: AssetIcon(
                                          path: "assets/svg/svg_email.svg",
                                        ),
                                        showBorder: true,
                                        text: 'test@gmail.com',
                                        label: "Email",
                                        textStyle:
                                            TextStyle(color: Colors.white),
                                      ),
                                      MyInputField(
                                        fillColor: backGroundColorBlueDark,
                                        prefix: AssetIcon(
                                          path: "assets/svg/note.svg",
                                        ),
                                        showBorder: true,
                                        text: 'Full Name',
                                        label: "Full Name",
                                        textStyle:
                                            TextStyle(color: Colors.white),
                                      ),
                                      MyInputField(
                                        fillColor: backGroundColorBlueDark,
                                        text: "+92 76754765",
                                        label: "Phone Number",
                                        showBorder: true,
                                        textStyle:
                                        TextStyle(color: Colors.white),
                                        prefix: AssetIcon(
                                          path: "assets/svg/svg_contact.svg",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: backGroundColorBlueDark,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: backGroundColorBlue.withOpacity(.1),
                                            blurRadius: 3)
                                      ]),
                                  child: ListTile(
                                    onTap:(){
                                      Get.to(ScreenUserPremiumUsers());
                                    },
                                    leading: AssetIcon(
                                        path: "assets/svg/svg_user.svg"),
                                    title: Text("Premium Users",
                                        style: TextStyle(color: Colors.white)),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: backGroundColorBlueDark,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: backGroundColorBlue.withOpacity(.1),
                                            blurRadius: 3)
                                      ]),
                                  child: ListTile(
                                    onTap:(){
                                      Get.to(ScreenUserProfileQRCode());
                                    },
                                    leading: AssetIcon(
                                        path: "assets/svg/qr_scan.svg"),
                                    title: Text("Your Profile QR Code",
                                        style: TextStyle(color: Colors.white)),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: backGroundColorBlueDark,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: backGroundColorBlue.withOpacity(.1),
                                            blurRadius: 3)
                                      ]),
                                  child: ListTile(
                                    onTap: (){
                                      Get.to(ScreenUserMapView());
                                    },
                                    leading: AssetIcon(
                                        path: "assets/svg/location.svg"),
                                    title: Text(
                                      "Map View",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: backGroundColorBlueDark,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: backGroundColorBlue.withOpacity(.1),
                                            blurRadius: 3)
                                      ]),
                                  child: ListTile(
                                    onTap: (){
                                    },
                                    leading: AssetIcon(
                                        path: "assets/svg/unlock.svg"),
                                    title: Text(
                                      "Privacy and Security",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: backGroundColorBlueDark,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: backGroundColorBlue.withOpacity(.1),
                                            blurRadius: 3)
                                      ]),
                                  child: ListTile(
                                    leading:
                                        AssetIcon(path: "assets/svg/note.svg"),
                                    title: Text("Legal & Terms",
                                        style: TextStyle(color: Colors.white)),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF1B183D),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xFF1B183D).withOpacity(.1),
                                            blurRadius: 3)
                                      ]
                                  ),
                                  child: ListTile(
                                    leading:
                                        AssetIcon(path: "assets/svg/bag.svg"),
                                    title: Text("Delete this account",
                                        style: TextStyle(
                                            color: buttonColorPink)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF1B183D),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xFF1B183D).withOpacity(.1),
                                            blurRadius: 3)
                                      ]),
                                  child: ListTile(
                                    leading: AssetIcon(
                                        path: "assets/svg/logout.svg"),
                                    title: Text("Logout",style: TextStyle(color: buttonColorPink),),

                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
