import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette/Screens/privacy_Screen.dart';
import 'package:palette/Screens/terms_conditions_Screen.dart';

import 'change_Information_Screen.dart';
import 'faq_Screen.dart';
import 'login_Screen.dart';
import 'notice_Screen.dart';

class ProfileScreen extends StatefulWidget {
  static const String idScreen = "MyInfo";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Container(
        height: 20,
        child: Center(
          child: Text(
            "탈퇴 하시겠습니까?",
            style: TextStyle(
                color: Color(0xff666666),
                fontSize: 15,
                fontFamily: " Noto Sans KR",
                fontWeight: FontWeight.w300),
          ),
        ),
      ),
      actionsPadding: EdgeInsets.only( right: 50 , bottom: 20),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Color(0xffEB9FA3),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "취소",
                      style:  TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: " Noto Sans KR",
                          fontWeight: FontWeight.w300)
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
              },
              child: Center(
                child: Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Color(0xffAAAAAA),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "탈퇴",
                      style:  TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: " Noto Sans KR",
                          fontWeight: FontWeight.w300)
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Container(),
          title: Text(
            "내정보",
            style: TextStyle(
              color: Color(0xff333333),
              fontWeight: FontWeight.bold,
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
              Column(
                children: [
                  Center(
                    child: Container(
                      height: 150,
                      child: Center(
                        child: Text(
                          ""
                          "[매장 or 서비스 상호명]",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Noto Sans KR",
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                  ),
                ],
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return ChangeInformationScreen();
                      }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "정보 수정",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff333333),
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Divider(
                thickness: 1,
                height: 0,
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return NoticeScreen();
                      }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "공지사항",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Noto Sans KR",
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Divider(
                thickness: 1,
                height: 0,
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return FAQScreen();
                      }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "FAQ",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Noto Sans KR",
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Divider(
                thickness: 1,
                height: 0,
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return TermsConditionScreen();
                      }));
                },
                child: Container(
                  padding: EdgeInsets.only(left: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "이용약관",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Noto Sans KR",
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Divider(
                thickness: 1,
                height: 1,
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return PrivacyScreen();
                      }));
                },
                child: Container(
                  padding: EdgeInsets.only(left: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "개인정보 취급방침",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Noto Sans KR",
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Divider(
                thickness: 1,
                height: 1,
              ),
              Container(
                margin: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: (){
                    showAlertDialog(context);
                  },
                  child: Text(
                    "탈퇴하기",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Noto Sans KR",
                        color: Color(0xff757575),
                        fontWeight: FontWeight.w300),
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
