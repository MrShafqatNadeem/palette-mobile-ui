import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:palette/palette(influencer)/select_shipping_address_Screen.dart';
import 'package:palette/palette(influencer)/service_recruited_Screen.dart';
import 'package:palette/palette(influencer)/shipping_registration_Screen.dart';
import 'package:palette/palette(influencer)/storesScreen.dart';

import 'my_campaign_screen.dart';
import 'my_info_screen.dart';
import 'notification_screen.dart';

class NavigationBar extends StatefulWidget {
  static const String idScreen = "UserHome";

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int selectedTab = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(),
      child: Scaffold(
        // backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(0), topLeft: Radius.circular(0)),
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 4),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
            child: BottomNavigationBar(
              //    elevation: 0,
              currentIndex: selectedTab,
              onTap: (index) {
                // if (index == 2) {
                //   Get.to(
                //     SpottTab(),
                //   );
                // }
                setState(() {
                  selectedTab = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/Home(Grey)i.png',
                    height: 35,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/Home(pink)i.png',
                    height: 35,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/myservice(grey).png',
                    height: 35,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/myservice(pink).png',
                    height: 35,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/Alram(grey)i.png',
                    height: 35,
                  ),
                  activeIcon: Image.asset('assets/images/Alram(pink)i.png',
                    height: 35, ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/Myprofile(grey)i.png',
                    height: 35,
                  ),
                  activeIcon: Image.asset('assets/images/Myprofile(pink)i.png',
                    height: 35, ),
                  label: "",
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: IndexedStack(
            index: selectedTab,
            children: [
              StoresScreen(),
              MyCampaignSceen(),
              NotificationScreeni(),
              MyProfileScreen()
              // ExploreScreen(),
              //  NotificationScreen(),
              // MyInfo(),
            ],
          ),
        ),
      ),
    );
  }

  _onWillPop() {
    if (selectedTab != 0) {
      setState(() {
        selectedTab = 0;
      });
    } else {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    }
  }
}
