import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:url_launcher/url_launcher.dart';

String googleAPIKey = "AIzaSyB2tfPVP5CVeqDZAtuMjzE_tz0K62Gb_LY";

Color border=Color(0xFF9F33FC);
Color buttonColorPink=Color(0xFFE9ACC2);
Color backGroundColorBlueLight=Color(0xFF343454);
Color backGroundColorBlue=Color(0xFF1F223F);
Color backGroundColorBlueDark=Color(0xFF0A0E37);
Color backGroundColorPink=Color(0xFFFF88B6);
Color bg2Color=Color(0xFF3C3C63);
List<String> allEventTags = [
  "Dancing",
  "Travelling",
  "Drinking",
  "Flying",
  "Eating",
  "Claiming",
];

var dbInstance = FirebaseFirestore.instance;
CollectionReference usersRef = dbInstance.collection("users");
CollectionReference postsRef = dbInstance.collection("posts");
String placeholder_url = "https://phito.be/wp-content/uploads/2020/01/placeholder.png";
String userPlaceHolder = "https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png";


double roundDouble(double value, int places) {
  num mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}


Future<void> launchUrl(String url) async {
  url = !url.startsWith("http") ? ("http://" + url) : url;
  if (await canLaunch(url)) {
    launch(
      url,
      forceSafariVC: true,
      enableJavaScript: true,
      forceWebView: GetPlatform.isAndroid,
    );
  } else {
    throw 'Could not launch $url';
  }
}