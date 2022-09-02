import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:one_life_users/views/screens/screen_user_chat.dart';

import '../../helpers/helpers.dart';

class ItemUserChatUsersList extends StatelessWidget {
  const ItemUserChatUsersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: (){
          Get.to(ScreenUserChat());
        },
        leading: CircleAvatar(
          child: Image.asset("assets/images/avatar (0).png"),

        ),
        title: Text("Carman Uzia",style: TextStyle(
          color: Colors.white,fontSize: 16
        ),),
        subtitle: Text("seriously ! i’m missing you",style: TextStyle(
          color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400
        ),),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Text("12:10 AM",style: TextStyle(
              color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400
          )),
            SizedBox(height: 0.5.h,),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: border,
              ),
              child: Text("01",
                  textAlign: TextAlign.center,
                  style: TextStyle(
              color: Colors.white,fontSize: 10,
              )),
            ),
          ],),
      ),
    );
  }
}
