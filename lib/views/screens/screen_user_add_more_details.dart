import 'package:custom_utils/custom_utils.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flare_flutter/base/actor_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:get/get.dart';

import '../../helpers/helpers.dart' as datetime;
import '../../widgets/asset_icon.dart';
import '../../widgets/my_button.dart';

class ScreenUserAddMoreDetails extends StatefulWidget {
  const ScreenUserAddMoreDetails({Key? key}) : super(key: key);

  @override
  _ScreenUserAddMoreDetailsState createState() =>
      _ScreenUserAddMoreDetailsState();
}

class _ScreenUserAddMoreDetailsState
    extends State<ScreenUserAddMoreDetails> {


  var lastDate = DateTime.now();

  String gender = "Female";

  DateTime _date=DateTime.now();

  Color borderColor = Colors.transparent;
  Color dottedColor = Colors.transparent;
@override
  void initState() {
    if (gender=="Female") {
      dottedColor=Color(0xFF9F33FC);

    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F2240),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: Color(0xFF1F2240),
          // image: DecorationImage(
          //     image: AssetImage("assets/images/img_reg.png")
          // )
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                  width: Get.width,
                  child: Image.asset(
                    "assets/images/img_reg.png",
                  )),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Column(
                children: [
                  Container(
                    height: 2,
                    width: 3.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 2,
                    width: 6.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        color: Color(0xFF1F2240),
                        borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "Select Your Gender",
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                          Text(
                            gender,
                            style: normal_h2Style.copyWith(
                                color: Color(0xFFFF88B6)),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 2,
                            width: 10.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFFF88B6),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  gender = "Female";
                                  dottedColor = Color(0xFF9F33FC);

                                  setState(() {
                                    if (gender == "Female") {
                                      dottedColor = Color(0xFF9F33FC);
                                      borderColor = Colors.transparent;

                                    } else {
                                      dottedColor = Colors.transparent;
                                    }
                                  });
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: (gender == "Female")
                                                ? borderColor
                                                : Colors.white),
                                        borderRadius:
                                        BorderRadius.circular(50)),
                                    margin: EdgeInsets.all(5),
                                    child: DottedBorder(
                                      color: (gender == "Female")
                                          ? dottedColor
                                          : Colors.transparent,
                                      dashPattern: [9, 9],
                                      strokeWidth: 1,
                                      borderType: BorderType.Circle,
                                      radius: Radius.circular(50),
                                      padding: EdgeInsets.all(5),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        child: Image.asset(
                                          "assets/images/female.png",
                                          width: 60.sp,
                                          height: 60.sp,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    )),
                              ),
                              GestureDetector(
                                onTap: () {
                                  gender = "Male";
                                  setState(() {
                                    if (gender == "Male") {
                                      dottedColor = Color(0xFF9F33FC);
                                      borderColor = Colors.transparent;
                                    } else {
                                      dottedColor = Colors.transparent;
                                    }
                                  });
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: (gender == "Male")
                                                ? borderColor
                                                : Colors.white),
                                        borderRadius:
                                        BorderRadius.circular(50)),
                                    margin: EdgeInsets.all(5),
                                    child: DottedBorder(
                                      color: (gender == "Male")
                                          ? dottedColor
                                          : Colors.transparent,
                                      dashPattern: [9, 9],
                                      strokeWidth: 1.5,
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(50),
                                      padding: EdgeInsets.all(6),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        child: Image.asset(
                                            "assets/images/male.png",
                                            width: 60.sp,
                                            height: 60.sp,
                                            fit: BoxFit.contain),
                                      ),
                                    )),
                              ),
                              GestureDetector(
                                onTap: () {
                                  gender = "Others";
                                  setState(() {
                                    if (gender == "Others") {
                                      dottedColor = Color(0xFF9F33FC);
                                      borderColor = Colors.transparent;
                                    } else {
                                      dottedColor = Colors.transparent;
                                    }
                                  });
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: (gender == "Others")
                                                ? borderColor
                                                : Colors.white),
                                        borderRadius:
                                        BorderRadius.circular(50)),
                                    margin: EdgeInsets.all(5),
                                    child: DottedBorder(
                                      color: (gender == "Others")
                                          ? dottedColor
                                          : Colors.transparent,
                                      dashPattern: [9, 9],
                                      strokeWidth: 1.5,
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(50),
                                      padding: EdgeInsets.all(6),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        child: Image.asset(
                                            "assets/images/she_male.png",
                                            width: 60.sp,
                                            height: 60.sp,
                                            fit: BoxFit.contain),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Add your Birthday ",
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    DateTime? dateTime = await showDatePicker(

                                        context: context,
                                        initialDate: lastDate,
                                        firstDate: DateTime(1900),
                                        lastDate: lastDate);
                                    if (dateTime != null) {
                                      setState(() {
                                        _date=dateTime;
                                      });
                                    }
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.white.withOpacity(0.1),
                                            width: 1)),
                                    child: AssetIcon(
                                      path: "assets/svg/calendar-2.svg",
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 13),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.white.withOpacity(0.1),
                                            width: 1)),
                                    child: Text("${_date.month}", style: TextStyle(color: Colors.white),),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 13),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.white.withOpacity(0.1),
                                          width: 1)),
                                  child: Text(
                                    "${_date.day}", style: TextStyle(color: Colors.white),),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 13),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.white.withOpacity(0.1),
                                          width: 1)),
                                  child: Text("${_date.year}",
                                    style: TextStyle(color: Colors.white),),
                                ),


                              ],
                            ),
                          ),

                          MyButton(
                              color: Color(0xFFFF88B6),
                              image: Icon(
                                Icons.arrow_forward,
                                size: 24,
                                color: Colors.white,
                              ),
                              icon: Text(
                                "Submit Request",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              text: "",
                              onPressed: () {
                              }),
                          Text.rich(TextSpan(
                              text: "Already a member? ",
                              children: [
                                TextSpan(
                                  text: " Connect directly",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFFF88B6)),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => nextScreen(),
                                ),
                              ],
                              style: normal_h3Style.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void nextScreen() {}
void dotBorder(){
  Decoration decoration= BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Color(0xFFFF88B6),
  );
}

}
