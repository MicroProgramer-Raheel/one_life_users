import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_life_users/helpers/helpers.dart';
import 'package:one_life_users/views/screens/screen_user_event_detail.dart';
import 'package:one_life_users/widgets/asset_icon.dart';

class ItemUserEvent extends StatefulWidget {
  const ItemUserEvent({Key? key}) : super(key: key);

  @override
  _ItemUserEventState createState() => _ItemUserEventState();
}

class _ItemUserEventState extends State<ItemUserEvent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric( vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFF343454),
        borderRadius: BorderRadius.circular(10)

      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Get.to(ScreenUserEventDetail());
            },
            child: Container(
              margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              height: Get.height * .45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/user_event.png'))),
              child: Stack(
                children: [
                  Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black.withOpacity(.5)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AssetIcon(
                              path: "assets/svg/svg_location.svg",
                              color: Colors.white,
                            ),
                            SizedBox(width: 2),
                            Text(
                              "1.72 km",
                              style: TextStyle(fontSize: 10, color: Colors.white),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          Text(
            "Baloon Haven",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          Text(
            "It is a long established fact that a reader will be distracted by the readable content ",
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: backGroundColorBlue,
                    border: Border.all(
                        width: .3, color: Color(0xFFFF1C74).withOpacity(.7))),
                child: Icon(
                  Icons.clear,
                  color: Color(0xFFFF1C74),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFF5A5B80),width: 3),

                  color: Color(0xFF5A5B80),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 16),

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: backGroundColorPink
                  ),
                  child: AssetIcon(path: "assets/svg/heart.svg",),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF5A5B80),width: 3),
                  shape: BoxShape.circle,
                  color: backGroundColorBlue,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue
                  ),
                  child: AssetIcon(path: "assets/svg/info.svg",),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
