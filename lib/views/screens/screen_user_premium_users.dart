import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_life_users/widgets/asset_icon.dart';

import '../../helpers/helpers.dart';

class ScreenUserPremiumUsers extends StatefulWidget {
  const ScreenUserPremiumUsers({Key? key}) : super(key: key);

  @override
  _ScreenUserPremiumUsersState createState() => _ScreenUserPremiumUsersState();
}

class _ScreenUserPremiumUsersState extends State<ScreenUserPremiumUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColorBlueDark,

      appBar: AppBar(
        backgroundColor: backGroundColorBlueDark,
        centerTitle: true,
        title: Text("Premium Users",style: TextStyle(color: Colors.white),),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,), onPressed: () { Get.back(); },),
      ),
      body: CustomListviewBuilder(

        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
            decoration: BoxDecoration(
              color: backGroundColorBlueDark,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [BoxShadow(color: backGroundColorBlueLight,blurRadius: 3 )]
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                child: Image.asset("assets/images/avatar (0).png"),
              ),
              title: Text("Eve Leroy",style: TextStyle(color: Colors.white),),
              subtitle: Text("Premium User   | 01 Ongoing Event",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.white.withOpacity(.5)),),
              trailing: AssetIcon(path: "assets/svg/message.svg"),
            ),
          );

        },
        scrollDirection: CustomDirection.vertical, itemCount: 12,

      ),
    );
  }
}
