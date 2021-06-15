import 'package:flutter/material.dart';
import 'package:palette/Screens/campaign_recruited_Screen.dart';
import 'package:palette/palette(influencer)/apply_for_campaign_screen.dart';
import 'package:palette/palette(influencer)/content_registration_screen.dart';
import 'package:palette/palette(influencer)/my_campaign_screen.dart';
import 'package:palette/palette(influencer)/my_info_screen.dart';
import 'package:palette/palette(influencer)/navigation%20_bar.dart';
import 'package:palette/palette(influencer)/notice_screeni.dart';
import 'package:palette/palette(influencer)/phone_verification.dart';
import 'package:palette/palette(influencer)/select_shipping_address_Screen.dart';
import 'package:palette/palette(influencer)/service_recruited_Screen.dart';
import 'package:palette/palette(influencer)/service_recruited_Screen_Insta.dart';
import 'package:palette/palette(influencer)/shipping_registration_Screen.dart';
import 'package:palette/palette(influencer)/signup_screen.dart';
import 'package:palette/palette(influencer)/storesScreen.dart';
import 'package:palette/widgets/bottom_Bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Screens/Selectors_Screen.dart';
import 'Screens/applicants_Screen.dart';
import 'Screens/campaign_recruited_Screen_Insta.dart';
import 'Screens/change_Information_Screen.dart';
import 'Screens/faq_Screen.dart';
import 'Screens/load_campaign_Screen.dart';
import 'Screens/login_Screen.dart';
import 'Screens/main_Screen.dart';
import 'Screens/notice_Screen.dart';
import 'Screens/profile_Screen.dart';
import 'Screens/registering_campaign_Screen.dart';
import 'Screens/signUp_Screen.dart';
import 'Screens/splash_Screen.dart';
import 'palette(influencer)/changing_information_screen.dart';
import 'palette(influencer)/filter_screen.dart';
void main() async {
  runApp(palette());
}

class palette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   //    statusBarColor: CustomColors.statusColor
    // ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Palette",
      theme: ThemeData(
        primaryColor: Colors.white,
        canvasColor: Colors.white,
      ),
      home:   NavigationBar()
    );
  }
}