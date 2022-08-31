import 'dart:async';

import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:one_life_users/helpers/helpers.dart';
import 'package:one_life_users/views/screens/screen_user_profile_public.dart';
import 'package:one_life_users/widgets/my_button.dart';

import '../../widgets/asset_icon.dart';

class ScreenUserEventDetail extends StatefulWidget {
  const ScreenUserEventDetail({Key? key}) : super(key: key);

  @override
  _ScreenUserEventDetailState createState() => _ScreenUserEventDetailState();
}

class _ScreenUserEventDetailState extends State<ScreenUserEventDetail> {
  final Completer<GoogleMapController> _controller = Completer();
  List<Marker> _markers = [];

  LatLng initPosition = LatLng(30.96942209486817, 70.94283411534289); //initial Position cannot assign null values
  LatLng currentLatLng = LatLng(30.96942209486817, 70.94283411534289); //initial currentPosition values cannot assign null values
  //initial permission status
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.96942209486817, 70.94283411534289),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColorBlue,
      appBar: AppBar(
        backgroundColor: backGroundColorBlue,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Go back",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(ScreenUserProfilePublic());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 35.sp,
              width: 35.sp,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFFCFCFD), width: 0.3),
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(userPlaceHolder))),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: backGroundColorBlueLight,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: Get.height * .45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/user_event.png'))),
                  ),
                  Text(
                    "Baloon Haven",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: backGroundColorBlue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AssetIcon(path: "assets/svg/svg_location.svg"),
                            SizedBox(
                              width: 1.h,
                            ),
                            Text(
                              "Distance",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        Text(
                          "173 km",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: backGroundColorBlue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AssetIcon(path: "assets/svg/format-circle.svg"),
                            SizedBox(
                              width: 1.h,
                            ),
                            Text(
                              "Organizer",
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        Text(
                          "Fenua Xlife",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: backGroundColorBlue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            AssetIcon(path: "assets/svg/note.svg"),
                            SizedBox(
                              width: 1.h,
                            ),
                            Text(
                              "Organizer",
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 28.sp),
                          child: Text(
                            "Ft is a long established fact that a reader will be distracted by the readable content ",
                            maxLines: 2,
                            style: TextStyle(
                                color: Colors.white.withOpacity(.5), fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Location Map",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),)),
                  Container(
                    height: 40.h,
                    margin: EdgeInsets.all(20.sp),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        heightFactor: 0.3,
                        widthFactor: 2.5,
                        child: GoogleMap(
                          mapType: MapType.normal,
                          myLocationButtonEnabled: true,
                          myLocationEnabled: true,
                          zoomControlsEnabled: true,
                          compassEnabled: true,
                          mapToolbarEnabled: true,
                          initialCameraPosition: _kGooglePlex,
                          // markers: Set<Marker>.of(_markers),
                          onMapCreated: (GoogleMapController mapController) async {
                            _controller.complete(mapController);

                            // final position = await Geolocator.getCurrentPosition(forceAndroidLocationManager: true, desiredAccuracy: LocationAccuracy.high);
                            //
                            // print(position);
                            // mapController.animateCamera(
                            //   CameraUpdate.newLatLngZoom(LatLng(position.latitude, position.longitude), 19),
                            // );
                          },
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
              child: Row(children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: backGroundColorBlueLight,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: AssetIcon(path: "assets/svg/notification.svg",),
                ),
                Expanded(child: MyButton(
                  padding: EdgeInsets.zero,

                  text: "Add To My Favorites", onPressed: (){},color: backGroundColorPink,))
              ],),
            )
          ],
        ),
      ),
    );
  }
}
