import 'package:flutter/material.dart';
import 'package:palette/palette(influencer)/login_screeni.dart';

import 'login_Screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginScreen()),
          (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEA9FA3),
      body: Container(
        child: Center(
          child: Text(
            "Palette",
            style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: "yanoljayache"),
          ),
        ),
      ),
    );
  }
}
