import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:palette/Screens/main_Screen.dart';
import 'package:palette/Screens/notification_Screen.dart';
import 'package:palette/Screens/profile_Screen.dart';
import 'package:palette/Screens/registering_campaign_Screen.dart';

class UserHome extends StatefulWidget {
  static const String idScreen = "UserHome";

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
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
                    'assets/images/Home(grey).png',
                    height: 35,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/Home(pink).png',
                    height: 35,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/Service enroll(grey).png',
                    height: 35,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/service enroll(pink).png',
                    height: 35,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/alarm(grey).png',
                    height: 35,
                  ),
                  activeIcon: Image.asset('assets/images/alarm(pink).png',
                      height: 35, ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/my profile(gery).png',
                    height: 35,
                  ),
                  activeIcon: Image.asset('assets/images/my profile(pink).png',
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
              MainScreen(),
              RegisteringcampaignScreen(change: false,),
              NotificationScreen(),
              ProfileScreen()
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
