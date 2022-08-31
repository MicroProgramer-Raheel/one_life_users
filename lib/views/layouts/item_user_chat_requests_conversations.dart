import 'package:flutter/material.dart';

class ItemUserChatRequestsConversations extends StatelessWidget {
  const ItemUserChatRequestsConversations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      child: Column(
        children: [
        CircleAvatar(
          radius: 35,
          child: Image.asset("assets/images/avatar (0).png"),
        )  ,
          Text("Guang li",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white),)
        ],
      ),
    );
  }
}

