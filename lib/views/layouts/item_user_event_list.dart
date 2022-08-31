import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_life_users/widgets/asset_icon.dart';

import '../../helpers/helpers.dart';

class ItemUserEventList extends StatefulWidget {
  const ItemUserEventList({Key? key}) : super(key: key);

  @override
  State<ItemUserEventList> createState() => _ItemUserEventListState();
}

class _ItemUserEventListState extends State<ItemUserEventList> {
  Color fav=Colors.white;
  bool isFav=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          },
        child:
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

              color: backGroundColorBlueLight,
              boxShadow: [BoxShadow(color: backGroundColorBlueLight
                  ,blurRadius: 3)]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    height: Get.height * .14,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/img_event.png"))
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            right: 5,
                            top: 5,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  isFav=!isFav;
                                });
                              },
                              child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: isFav?fav:Color(0xFFFF1C74),
                              shape: BoxShape.circle,

                          ),
                          child: AssetIcon(path: "assets/svg/favorite.svg",)
                        ),
                            ))
                      ],
                    ),
                  )),
              Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Baloon Haven",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                            height: 3.sp),

                        Text(
                          "That is a long established fact that a reader will be distracted by the readable content ",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        SizedBox(
                            height: 3.sp),

                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                           AssetIcon(path: 'assets/svg/svg_location.svg'),

                            SizedBox(
                                width: 3.sp),

                            Text(
                              "173KM",
                              style: TextStyle(fontSize: 12, color: Colors.white
                                  .withOpacity(.5)),
                            )
                          ],
                        ),
                        SizedBox(
                            height: 3.sp),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Row(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                            AssetIcon(path: 'assets/svg/format-circle.svg',color: Colors.white.withOpacity(.5),),
                             SizedBox(
                                 width: 4.sp),
                             Text(
                               "Fenua Xlife",
                               style: TextStyle(fontSize: 12, color: Colors.white
                                   .withOpacity(.5)),
                             )
                           ],
                         ),
                         Row(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             AssetIcon(path: "assets/svg/calendar-2.svg",color: Colors.white.withOpacity(.5),),
                             SizedBox(
                                 width: 4.sp),
                             Text(
                               "26.04.2022",
                               style: TextStyle(fontSize: 12, color: Colors.white
                                   .withOpacity(.5)),
                             )
                           ],
                         ),
                       ],)

                      ],
                    ),
                  ))
            ],
          ),
        )
    );
  }
}
