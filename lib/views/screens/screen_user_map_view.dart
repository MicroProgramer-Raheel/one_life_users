import 'dart:async';

import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:one_life_users/helpers/helpers.dart';
import 'package:one_life_users/views/layouts/item_user_event_list.dart';
import 'package:one_life_users/widgets/asset_icon.dart';

class ScreenUserMapView extends StatefulWidget {
  const ScreenUserMapView({Key? key}) : super(key: key);

  @override
  _ScreenUserMapViewState createState() => _ScreenUserMapViewState();
}

class _ScreenUserMapViewState extends State<ScreenUserMapView> {
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
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: Stack(children: [

                GoogleMap(
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
                Positioned(
                    left: 15,
                    right: 15,
                    top: 10,
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Event Map View",style: normal_h1Style_bold.copyWith(color: Colors.black),),
                        CircleAvatar(radius: 20,child: Image.asset("assets/images/avatar (0).png"),)

                      ],),
                    )),
                Positioned(
                    left: 15,
                    bottom: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 3,vertical: 5),
                      decoration: BoxDecoration(
                        color: backGroundColorBlueDark,
                        borderRadius: BorderRadius.circular(5),
           
                      ),
                      child: Row(
                        children: [
                          AssetIcon(path: "assets/svg/filter.svg"),
                          SizedBox(width: 2.w,),
                          Text("FILTERS",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.white),),
                        ],
                      ),
                    )),
              ],),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(left: 10,top: 10,right: 10),
              decoration: BoxDecoration(
                color: backGroundColorBlueDark,
                borderRadius: BorderRadius.vertical(top: Radius.circular(10),)
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nearby Events",style: normal_h2Style.copyWith(color: Colors.white),),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: bg2Color,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(color: backGroundColorBlueLight, blurRadius: 1)
                          ],
                        ),
                        child: Icon(
                          Icons.clear,
                          size: 20,
                          color: Color(0xFFFD65AF),
                        ),
                      ),
                    )
                  ],),
                Expanded(child: CustomListviewBuilder(
                  itemCount: 4,
                  scrollDirection: CustomDirection.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemUserEventList();
                  },
                ))
              ],),
            ),
          ),
        ],
      ),
    );
  }
}
