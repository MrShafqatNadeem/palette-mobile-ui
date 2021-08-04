import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette/Screens/signUp_Screen.dart';
import 'package:palette/palette(influencer)/phone_verification.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginScreenI extends StatefulWidget {
  @override
  _LoginScreenIState createState() => _LoginScreenIState();
}

class _LoginScreenIState extends State<LoginScreenI> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 812),
        orientation: Orientation.portrait);
    return Scaffold(

      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(),
              Text(
                "Palette",
                style: TextStyle(
                    fontSize: 50.sp,
                    color: Color(0xffEA9FA3),
                    fontWeight: FontWeight.w700,
                    fontFamily: "yanoljayache"),
              ),
              SizedBox(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return PhoneVerification();
                      }));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.87,
                      height: 52.sp,
                      // decoration: BoxDecoration(
                      //     border: Border.all(
                      //       color: Color(0xffE6E6EA),
                      //     ),
                      //     borderRadius: BorderRadius.all(Radius.circular(5))),
                      child:
                      Image.asset(
                          "assets/images/login.jpeg",
                          fit: BoxFit.fill),
                      // Center(
                      //     child: Text(
                      //   "Login",
                      //   style: TextStyle(fontSize: 20, color: Colors.green),
                      // )),
                    ),
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Text(
                      "공급사이신가요?",
                      style: TextStyle(fontSize: 14.sp, color: Color(0xff999999),fontWeight: FontWeight.w400,
                        fontFamily: "Noto Sans KR"),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
