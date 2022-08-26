import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/asset_icon.dart';
import '../../widgets/my_button.dart';

class ScreenUserSplash extends StatefulWidget {
  const ScreenUserSplash({Key? key}) : super(key: key);

  @override
  _ScreenUserSplashState createState() => _ScreenUserSplashState();
}

class _ScreenUserSplashState extends State<ScreenUserSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          "assets/images/img_bg.png",
        ),
      )),
      child: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.4,
                .7,
              ],
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black,
              ],
            )),
          ),
          Positioned(
            bottom: 40,
             left: 15,
              right: 15,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                AssetIcon(path: "assets/svg/logo.svg",),
                  SizedBox(height: 5.h,),

                  Text("Please make registration to continue",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),textAlign: TextAlign.center,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                    child: Text("It is a long established fact that a reader will be distracted by the readable content ",style: TextStyle(fontSize: 12,color: Colors.white),textAlign: TextAlign.center,),
                  ),
                  AssetIcon(path: "assets/svg/img_line.svg",),
                  SizedBox(height: 4.h,),
                  MyButton(
                    color: Color(0xFF9F33FC),
                      icon: AssetIcon(path: "assets/svg/img_sms.svg",),
                      text: "Login with email", onPressed: (){
                  },
                    image: Icon(Icons.arrow_forward,color: Colors.white),

                  ),


                ],
          ))
        ],
      ),
    ));
  }
}
