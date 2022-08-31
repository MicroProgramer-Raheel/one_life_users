import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'package:one_life_users/helpers/helpers.dart';
import 'package:one_life_users/views/layouts/layout_user_fevorites.dart';
import 'package:one_life_users/views/layouts/layout_user_home.dart';
import 'package:one_life_users/views/layouts/layout_user_messages.dart';
import 'package:one_life_users/views/layouts/layout_user_search.dart';

class ScreenUserHomePage extends StatefulWidget {
  const ScreenUserHomePage({Key? key}) : super(key: key);

  @override
  _ScreenUserHomePageState createState() => _ScreenUserHomePageState();
}

class _ScreenUserHomePageState extends State<ScreenUserHomePage> {
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: backGroundColorBlue,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: <Widget>[
            LayoutUserHome(),
            LayoutUserFevorites(),
            LayoutUserMessages(),
            LayoutUserSearch()
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(

          inactiveIconColor: Colors.grey,

          bottomPadding: 10,
          waterDropColor: Color(0xFFFF88B6),
          backgroundColor: bg2Color,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
              filledIcon: Icons.home,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
                filledIcon: Icons.favorite,
                outlinedIcon: Icons.favorite_border),
            BarItem(
              filledIcon: Icons.messenger_rounded,
              outlinedIcon: Icons.messenger_outline,
            ),
            BarItem(
              filledIcon: Icons.search_rounded,
              outlinedIcon: Icons.search_rounded,
            ),
          ],
        ),
      ),
    );
  }
}

