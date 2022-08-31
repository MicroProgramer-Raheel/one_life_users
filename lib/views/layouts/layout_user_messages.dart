import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_life_users/views/layouts/item_user_chat_requests_conversations.dart';
import 'package:one_life_users/views/layouts/item_user_chat_users_list.dart';

import '../../helpers/helpers.dart';
import '../screens/screen_user_profile_public.dart';

class LayoutUserMessages extends StatefulWidget {
  const LayoutUserMessages({Key? key}) : super(key: key);

  @override
  _LayoutUserMessagesState createState() => _LayoutUserMessagesState();
}

class _LayoutUserMessagesState extends State<LayoutUserMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColorBlue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backGroundColorBlue,
        title: Image.asset(
          "assets/images/Logo One Life.png",
          width: Get.width * 0.3,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(ScreenUserProfilePublic());
            },
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.white)),
              child: CircleAvatar(
                radius: 20,
                child: Image.asset(
                  "assets/images/avatar (0).png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left:10 ),
            padding: EdgeInsets.symmetric(vertical: 10 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
              Text(
                "Nearby messaging",
                style: normal_h2Style.copyWith(
                    color: Colors.white, fontSize: 21, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 3.sp,),
              Text(
                "Requests of conversations",
                style: normal_h2Style.copyWith(
                    color: Colors.white.withOpacity(.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),

                SizedBox(height: 3.sp,),
              Container(
                height: Get.height * .12,
                child: CustomListviewBuilder(
                  itemCount: 10,
                  scrollDirection: CustomDirection.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemUserChatRequestsConversations();
                  },
                ),
              ),

                SizedBox(height: 3.sp,),
              Text(
                "Conversations in progress",
                style: normal_h2Style.copyWith(
                    color: Colors.white.withOpacity(.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],),
          ),
          Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => Divider(
                  color: Colors.grey.withOpacity(0.1),
                ),
                itemBuilder: (
                  BuildContext context, int index) { return ItemUserChatUsersList(); }, itemCount: 10,
              )
          )
        ],
      ),
    );
  }
}
