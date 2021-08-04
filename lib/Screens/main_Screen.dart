import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette/Screens/campaign_completed_Screen.dart';

import 'campaign_progress_Screen.dart';
import 'campaign_recruited_Screen.dart';
import 'campaign_recruited_Screen_Insta.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool data = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          backgroundColor: Color(0xffEA9FA3),
          title: Text(
            "Palette",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "yanoljayache"),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: InkWell(
            onTap: () {
              setState(() {
                data = true;
              });
            },
            child: Container(
              padding: EdgeInsets.only(top: 15, right: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "모집중인",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff333333),
                            decoration: TextDecoration.underline,
                            decorationThickness: 3,
                            decorationColor: Color(0xffEA9FA3),
                            fontFamily: "Noto Sans KR",
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: " 캠페인",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff333333),
                            fontFamily: "Noto Sans KR",
                            fontWeight: FontWeight.w300))
                  ])),
                  SizedBox(
                    height: 12,
                  ),
                  data
                      ? Container(
                                width: MediaQuery.of(context).size.width,
                                height: 230,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    //  physics: NeverScrollableScrollPhysics(),
                                    itemCount: 3,
                                    itemBuilder: (BuildContext context,
                                            int index) =>
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: InkWell(
                                            onTap: () {
                                              if(index == 0 )
                                                {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(builder: (context) {
                                                        return CampaignRecruitedScreen();
                                                      }));
                                                }
                                              else
                                                {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                            return CampaignRecruitedInstsScreen();
                                                          }));
                                                }

                                            },
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 120,
                                                  height: 110,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                    child: Image.asset(
                                                        "assets/images/test.jpg",
                                                        fit: BoxFit.fill),
                                                  ),
                                                ),
                                                RichText(
                                                    text: TextSpan(children: <
                                                        TextSpan>[
                                                  TextSpan(
                                                      text: "Blog",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xff02C759),
                                                          //  fontFamily: "Noto Sans KR",
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  TextSpan(
                                                      text: " 1일 남음",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Color(0xff333333),
                                                          fontFamily:
                                                              "Noto Sans KR",
                                                          fontWeight:
                                                              FontWeight.w300))
                                                ])),
                                                SizedBox(height: 4),
                                                Text(
                                                  "[대전서구]유달리 헤어샵",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xff333333),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily:
                                                          "Noto Sans KR"),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  "두피,모발 정밀검사 +관리",
                                                  style: TextStyle(
                                                      fontSize: 10.5,
                                                      color: Color(0xff666666),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily:
                                                          "Noto Sans KR"),
                                                ),
                                                SizedBox(
                                                  height: 6,
                                                ),
                                                Text(
                                                  "신청 26 / 6명",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color(0xff666666),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily:
                                                          "Noto Sans KR"),
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Container(
                                                  width: 40,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0xffEEB4B4)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3)),
                                                  child: Center(
                                                    child: Text(
                                                      "10만원",
                                                      style: TextStyle(
                                                          fontSize: 9,
                                                          color:
                                                              Color(0xffE95252),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontFamily:
                                                              "Noto Sans KR"),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )),
                              )


                      : Container(
                          width: MediaQuery.of(context).size.width,
                          height: 230,
                          child: Center(
                            child: Text(
                              "두피,모발 정밀검사 +관리",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff666666),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Noto Sans KR"),
                            ),
                          ),
                        ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffE1E1E1),
                  ),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "진행중인",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff333333),
                            decoration: TextDecoration.underline,
                            decorationThickness: 3,
                            decorationColor: Color(0xffEA9FA3),
                            fontFamily: "Noto Sans KR",
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: " 캠페인",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff333333),
                            fontFamily: "Noto Sans KR",
                            fontWeight: FontWeight.w300))
                  ])),
                  SizedBox(
                    height: 12,
                  ),
                  data
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: 230,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) =>
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return CampaignProgressScreen();
                                        }));
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 120,
                                            height: 110,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                              child: Image.asset(
                                                  "assets/images/test.jpg",
                                                  fit: BoxFit.fitHeight),
                                            ),
                                          ),
                                          RichText(
                                              text:
                                                  TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: "Blog",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff02C759),
                                                    //  fontFamily: "Noto Sans KR",
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text: " 1일 남음",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff333333),
                                                    fontFamily: "Noto Sans KR",
                                                    fontWeight:
                                                        FontWeight.w300))
                                          ])),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "[대전서구]유달리 헤어샵",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff333333),
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Noto Sans KR"),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "두피,모발 정밀검사 +관리",
                                            style: TextStyle(
                                                fontSize: 10.5,
                                                color: Color(0xff666666),
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Noto Sans KR"),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            "신청 26 / 6명",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xff666666),
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Noto Sans KR"),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Container(
                                            width: 40,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xffEEB4B4)),
                                                borderRadius:
                                                    BorderRadius.circular(3)),
                                            child: Center(
                                              child: Text(
                                                "10만원",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color: Color(0xffE95252),
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: "Noto Sans KR"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width,
                          height: 230,
                          child: Center(
                            child: Text(
                              "두피,모발 정밀검사 +관리",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff666666),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Noto Sans KR"),
                            ),
                          ),
                        ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffE1E1E1),
                  ),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "완료된",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff333333),
                            decoration: TextDecoration.underline,
                            decorationThickness: 3,
                            decorationColor: Color(0xffEA9FA3),
                            fontFamily: "Noto Sans KR",
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: " 캠페인",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff333333),
                            fontFamily: "Noto Sans KR",
                            fontWeight: FontWeight.w300))
                  ])),
                  SizedBox(
                    height: 12,
                  ),
                  data
                      ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: 230,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) =>
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return CampaignCompletedScreen();
                                        }));
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 120,
                                            height: 110,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                              child: Image.asset(
                                                  "assets/images/test.jpg",
                                                  fit: BoxFit.fitHeight),
                                            ),
                                          ),
                                          RichText(
                                              text:
                                                  TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: "Blog",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff02C759),
                                                    //  fontFamily: "Noto Sans KR",
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text: " 1일 남음",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xff333333),
                                                    fontFamily: "Noto Sans KR",
                                                    fontWeight:
                                                        FontWeight.w300))
                                          ])),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "[대전서구]유달리 헤어샵",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xff333333),
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Noto Sans KR"),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "두피,모발 정밀검사 +관리",
                                            style: TextStyle(
                                                fontSize: 10.5,
                                                color: Color(0xff666666),
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Noto Sans KR"),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            "신청 26 / 6명",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xff666666),
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Noto Sans KR"),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Container(
                                            width: 40,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xffEEB4B4)),
                                                borderRadius:
                                                    BorderRadius.circular(3)),
                                            child: Center(
                                              child: Text(
                                                "10만원",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color: Color(0xffE95252),
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily: "Noto Sans KR"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width,
                          height: 230,
                          child: Center(
                            child: Text(
                              "두피,모발 정밀검사 +관리",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff666666),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Noto Sans KR"),
                            ),
                          ),
                        ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffE1E1E1),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
