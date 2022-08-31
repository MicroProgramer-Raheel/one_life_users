import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_life_users/helpers/helpers.dart';
import 'package:one_life_users/widgets/asset_icon.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ScreenUserProfileQRCode extends StatefulWidget {
  const ScreenUserProfileQRCode({Key? key}) : super(key: key);

  @override
  _ScreenUserProfileQRCodeState createState() =>
      _ScreenUserProfileQRCodeState();
}

class _ScreenUserProfileQRCodeState extends State<ScreenUserProfileQRCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColorBlueDark,

      appBar: AppBar(
        backgroundColor: backGroundColorBlueDark,
          centerTitle: true,
        title: Text("Personal QR Code",style: TextStyle(color: Colors.white),),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,), onPressed: () { Get.back(); },),
      ),
      body:Center(
        child: Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(vertical: 20),
          margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            boxShadow: [BoxShadow(
              color: backGroundColorBlueLight
                ,
              blurRadius: 3
            )],
              color: backGroundColorBlueDark,
              borderRadius:
              BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            CircleAvatar(
              radius: 50,
              child: Image.asset("assets/images/avatar (0).png"),),
            SizedBox(height: 2.h,),
            Text("Jonathan Hipe",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white),),
            SizedBox(height: 1.h,),

            Text("Your Personalized QR Code",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white),),


            SizedBox(height: 3.h,),

            QrImage(
              data: "www.google.com",
              foregroundColor: buttonColorPink,
              version: QrVersions.auto,
              size: 190.sp,
            ),
            SizedBox(height: 3.h,),

            Text("Powered by Fenua Xlife",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white),),


          ],),

        ),
      ),
    );
  }
}
