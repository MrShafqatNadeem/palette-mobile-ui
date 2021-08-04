import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette/Screens/privacy_Screen.dart';
import 'package:palette/Screens/terms_conditions_Screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/palette(influencer)/privacy_screeni.dart';
import 'package:palette/palette(influencer)/select_shipping_address_Screen.dart';
import 'package:palette/palette(influencer)/terms_condition_screeni.dart';

import 'changing_information_screen.dart';
import 'faq_Screeni.dart';
import 'login_screeni.dart';
import 'notice_screeni.dart';

class MyProfileScreen extends StatefulWidget {

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 812),
        orientation: Orientation.portrait);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Container(),
          title: Text(
            "내정보",
            style: TextStyle(
              color: Color(0xff333333),
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              fontFamily: "Noto Sans KR",
            ),
          ),
          centerTitle: true,
          elevation: 1.5,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return ChangingInformationScreen();
                      }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20.sp , top: 14.5.sp),
                  child: Text(
                    "정보 수정",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff333333),
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                height: 31.sp,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return SelectShippingAdressScreen();
                      }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Text(
                    "배송지 관리",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff333333),
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                height: 31.sp,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return NoticeScreeni();
                      }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Text(
                    "공지사항",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff333333),
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                height: 31.sp,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return FAQScreeni();
                      }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Text(
                    "FAQ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff333333),
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                height: 31.sp,
              ),
              InkWell(
                onTap: (){
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) {
                  //       return TermsConditionScreen();
                  //     }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Text(
                    "고객센터",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff333333),
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                height: 31.sp,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return TermsConditionScreeni();
                      }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Text(
                    "이용약관",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff333333),
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                height: 31.sp,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return PrivacyScreeni();
                      }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Text(
                    "개인정보 취급방침",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff333333),
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                height: 31.sp,
              ),
              Container(
                margin: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return LoginScreenI();
                        }));
                  },
                  child: Text(
                    "로그아웃",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "Noto Sans KR",
                        color: Color(0xff757575),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
