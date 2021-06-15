import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/palette(influencer)/recruitment_campaign_screen.dart';
import 'package:palette/palette(influencer)/search_Screen.dart';

import 'completed_compaign_screen.dart';
import 'filter_screen.dart';
import 'ongoing_compaign_Screen.dart';

class MyCampaignSceen extends StatefulWidget {
  @override
  _MyCampaignSceenState createState() => _MyCampaignSceenState();
}

class _MyCampaignSceenState extends State<MyCampaignSceen> {
  bool loader = false;
  int tabindex = 0;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 812),
        orientation: Orientation.portrait);
    return DefaultTabController(
      length: 4,
      initialIndex: tabindex,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text(
            "나의 캠페인",
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
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: AppBar(
                        backgroundColor: Color(0xffFFFFFF),
                        elevation: 0,
                        bottom: TabBar(indicatorColor: Color(0xffEA9FA3),
                            //   onTap: (index){
                            // setState(() {
                            //   changecolor = !changecolor;
                            // });
                            //   },
                            tabs: [
                              Tab(
                                  child: Text(
                                    "신청",
                                    style: TextStyle(
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Noto Sans KR",
                                        fontSize: 16.sp),
                                  )),
                              Tab(
                                  child: Text(
                                    "선정",
                                    style: TextStyle(
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Noto Sans KR",
                                        fontSize: 16.sp),
                                  )),
                              Tab(
                                  child: Text(
                                    "등록",
                                    style: TextStyle(
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Noto Sans KR",
                                        fontSize: 16.sp),
                                  )),
                              Tab(
                                  child: Text(
                                    "완료",
                                    style: TextStyle(
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Noto Sans KR",
                                        fontSize: 16.sp),
                                  )),
                            ])),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [

                            Expanded(
                              child: loader
                                  ? ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 2,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) {
                                                return RecruitmentCampaignScreen(change: true);
                                              }));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(top: 8),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .start,
                                                children: [
                                                      Container(
                                                        width: 130.sp,
                                                        height: 130.sp,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              5),
                                                          child: Image.asset(
                                                              "assets/images/test.jpg",
                                                              fit: BoxFit
                                                                  .fitHeight),
                                                        ),
                                                      ),
                                                  SizedBox(
                                                    width: 17.sp,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(
                                                              children: <
                                                                  TextSpan>[
                                                                TextSpan(
                                                                    text:
                                                                    "Blog",
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      14.sp,
                                                                      color: Color(
                                                                          0xff00C5B1),
                                                                      fontWeight:
                                                                      FontWeight.w700,
                                                                      fontFamily:
                                                                      "yanoljayache",
                                                                    )),
                                                                TextSpan(
                                                                    text:
                                                                    " 1일 남음",
                                                                    style: TextStyle(
                                                                        fontSize: 11
                                                                            .sp,
                                                                        color: Color(
                                                                            0xff333333),
                                                                        fontFamily:
                                                                        "Noto Sans KR",
                                                                        fontWeight:
                                                                        FontWeight.w500))
                                                              ])),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        "[대전서구] 유달리 헤어샵",
                                                        style: TextStyle(
                                                          color: Color(
                                                              0xff000000),
                                                          fontSize: 13.sp,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                          fontFamily:
                                                          "Noto Sans KR",
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 3.sp,
                                                      ),
                                                      Text(
                                                        "두피,모발 정밀검사 +관리",
                                                        style: TextStyle(
                                                          color: Color(
                                                              0xff666666),
                                                          fontSize: 11.sp,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                          fontFamily:
                                                          "Noto Sans KR",
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 16.sp,
                                                      ),
                                                      Text(
                                                        "신청 26 / 6명",
                                                        style: TextStyle(
                                                          color: Color(
                                                              0xff666666),
                                                          fontSize: 11.sp,
                                                          fontWeight:
                                                          FontWeight
                                                              .w300,
                                                          fontFamily:
                                                          "Noto Sans KR",
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Container(
                                                        width: 46.sp,
                                                        height: 22.sp,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Color(
                                                                    0xffE95252)),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                5)),
                                                        child: Center(
                                                          child: Text(
                                                            "10만원",
                                                            style:
                                                            TextStyle(
                                                              color: Color(
                                                                  0xffE95252),
                                                              fontSize:
                                                              10.sp,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w400,
                                                              fontFamily:
                                                              "Noto Sans KR",
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                thickness: 2,
                                                height: 10.5.sp,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ))
                                  : Center(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      loader = true;
                                    });
                                  },
                                  child: Text(
                                    "신청한 캠페인이 없습니다.",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Noto Sans KR"),
                                  ),
                                ),
                              ),
                            ),


                        // 2nd tap
                        Expanded(
                          child: loader
                              ? ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 2,
                              itemBuilder:
                                  (BuildContext context, int index) =>
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                            return OnGoingCampaignScreen();
                                          }));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 8),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .start,
                                            children: [
                                              Container(
                                                width: 130.sp,
                                                height: 130.sp,
                                                child: ClipRRect(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      5),
                                                  child: Image.asset(
                                                      "assets/images/test.jpg",
                                                      fit: BoxFit
                                                          .fitHeight),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 17.sp,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  RichText(
                                                      text: TextSpan(
                                                          children: <
                                                              TextSpan>[
                                                            TextSpan(
                                                                text:
                                                                "Blog",
                                                                style:
                                                                TextStyle(
                                                                  fontSize:
                                                                  14.sp,
                                                                  color: Color(
                                                                      0xff00C5B1),
                                                                  fontWeight:
                                                                  FontWeight.w700,
                                                                  fontFamily:
                                                                  "yanoljayache",
                                                                )),
                                                            TextSpan(
                                                                text:
                                                                " 1일 남음",
                                                                style: TextStyle(
                                                                    fontSize: 11
                                                                        .sp,
                                                                    color: Color(
                                                                        0xff333333),
                                                                    fontFamily:
                                                                    "Noto Sans KR",
                                                                    fontWeight:
                                                                    FontWeight.w500))
                                                          ])),
                                                  SizedBox(
                                                    height: 3,
                                                  ),
                                                  Text(
                                                    "[대전서구] 유달리 헤어샵",
                                                    style: TextStyle(
                                                      color: Color(
                                                          0xff000000),
                                                      fontSize: 13.sp,
                                                      fontWeight:
                                                      FontWeight
                                                          .w400,
                                                      fontFamily:
                                                      "Noto Sans KR",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.sp,
                                                  ),
                                                  Text(
                                                    "두피,모발 정밀검사 +관리",
                                                    style: TextStyle(
                                                      color: Color(
                                                          0xff666666),
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                      FontWeight
                                                          .w400,
                                                      fontFamily:
                                                      "Noto Sans KR",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16.sp,
                                                  ),
                                                  Text(
                                                    "신청 26 / 6명",
                                                    style: TextStyle(
                                                      color: Color(
                                                          0xff666666),
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                      FontWeight
                                                          .w300,
                                                      fontFamily:
                                                      "Noto Sans KR",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 6,
                                                  ),
                                                  Container(
                                                    width: 46.sp,
                                                    height: 22.sp,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color(
                                                                0xffE95252)),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            5)),
                                                    child: Center(
                                                      child: Text(
                                                        "10만원",
                                                        style:
                                                        TextStyle(
                                                          color: Color(
                                                              0xffE95252),
                                                          fontSize:
                                                          10.sp,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                          fontFamily:
                                                          "Noto Sans KR",
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1.5,
                                            height: 10.5.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ))
                              : Center(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  loader = true;
                                });
                              },
                              child: Text(
                                "신청한 캠페인이 없습니다.",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                              ),
                            ),
                          ),
                        ),

                        //3rd tab
                        Expanded(
                          child: loader
                              ? ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 2,
                              itemBuilder:
                                  (BuildContext context, int index) =>
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                            return OnGoingCampaignScreen();
                                          }));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 8),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .start,
                                            children: [
                                              Container(
                                                width: 130.sp,
                                                height: 130.sp,
                                                child: ClipRRect(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      5),
                                                  child: Image.asset(
                                                      "assets/images/test.jpg",
                                                      fit: BoxFit
                                                          .fitHeight),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 17.sp,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  RichText(
                                                      text: TextSpan(
                                                          children: <
                                                              TextSpan>[
                                                            TextSpan(
                                                                text:
                                                                "Blog",
                                                                style:
                                                                TextStyle(
                                                                  fontSize:
                                                                  14.sp,
                                                                  color: Color(
                                                                      0xff00C5B1),
                                                                  fontWeight:
                                                                  FontWeight.w700,
                                                                  fontFamily:
                                                                  "yanoljayache",
                                                                )),
                                                            TextSpan(
                                                                text:
                                                                " 1일 남음",
                                                                style: TextStyle(
                                                                    fontSize: 11
                                                                        .sp,
                                                                    color: Color(
                                                                        0xff333333),
                                                                    fontFamily:
                                                                    "Noto Sans KR",
                                                                    fontWeight:
                                                                    FontWeight.w500))
                                                          ])),
                                                  SizedBox(
                                                    height: 3,
                                                  ),
                                                  Text(
                                                    "[대전서구] 유달리 헤어샵",
                                                    style: TextStyle(
                                                      color: Color(
                                                          0xff000000),
                                                      fontSize: 13.sp,
                                                      fontWeight:
                                                      FontWeight
                                                          .w400,
                                                      fontFamily:
                                                      "Noto Sans KR",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.sp,
                                                  ),
                                                  Text(
                                                    "두피,모발 정밀검사 +관리",
                                                    style: TextStyle(
                                                      color: Color(
                                                          0xff666666),
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                      FontWeight
                                                          .w400,
                                                      fontFamily:
                                                      "Noto Sans KR",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16.sp,
                                                  ),
                                                  Text(
                                                    "신청 26 / 6명",
                                                    style: TextStyle(
                                                      color: Color(
                                                          0xff666666),
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                      FontWeight
                                                          .w300,
                                                      fontFamily:
                                                      "Noto Sans KR",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 6,
                                                  ),
                                                  Container(
                                                    width: 46.sp,
                                                    height: 22.sp,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color(
                                                                0xffE95252)),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            5)),
                                                    child: Center(
                                                      child: Text(
                                                        "10만원",
                                                        style:
                                                        TextStyle(
                                                          color: Color(
                                                              0xffE95252),
                                                          fontSize:
                                                          10.sp,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                          fontFamily:
                                                          "Noto Sans KR",
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1.5,
                                            height: 10.5.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ))
                              : Center(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  loader = true;
                                });
                              },
                              child: Text(
                                "신청한 캠페인이 없습니다.",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                              ),
                            ),
                          ),
                        ),
                        //4rth tab
                        Expanded(
                          child: loader
                              ? ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 2,
                              itemBuilder:
                                  (BuildContext context, int index) =>
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                            return CompletedCompaignScreen();
                                          }));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 8),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .start,
                                            children: [
                                              Container(
                                                width: 130.sp,
                                                height: 130.sp,
                                                child: ClipRRect(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      5),
                                                  child: Image.asset(
                                                      "assets/images/test.jpg",
                                                      fit: BoxFit
                                                          .fitHeight),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 17.sp,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  RichText(
                                                      text: TextSpan(
                                                          children: <
                                                              TextSpan>[
                                                            TextSpan(
                                                                text:
                                                                "Blog",
                                                                style:
                                                                TextStyle(
                                                                  fontSize:
                                                                  14.sp,
                                                                  color: Color(
                                                                      0xff00C5B1),
                                                                  fontWeight:
                                                                  FontWeight.w700,
                                                                  fontFamily:
                                                                  "yanoljayache",
                                                                )),
                                                            TextSpan(
                                                                text:
                                                                " 1일 남음",
                                                                style: TextStyle(
                                                                    fontSize: 11
                                                                        .sp,
                                                                    color: Color(
                                                                        0xff333333),
                                                                    fontFamily:
                                                                    "Noto Sans KR",
                                                                    fontWeight:
                                                                    FontWeight.w500))
                                                          ])),
                                                  SizedBox(
                                                    height: 3,
                                                  ),
                                                  Text(
                                                    "[대전서구] 유달리 헤어샵",
                                                    style: TextStyle(
                                                      color: Color(
                                                          0xff000000),
                                                      fontSize: 13.sp,
                                                      fontWeight:
                                                      FontWeight
                                                          .w400,
                                                      fontFamily:
                                                      "Noto Sans KR",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.sp,
                                                  ),
                                                  Text(
                                                    "두피,모발 정밀검사 +관리",
                                                    style: TextStyle(
                                                      color: Color(
                                                          0xff666666),
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                      FontWeight
                                                          .w400,
                                                      fontFamily:
                                                      "Noto Sans KR",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16.sp,
                                                  ),
                                                  Text(
                                                    "신청 26 / 6명",
                                                    style: TextStyle(
                                                      color: Color(
                                                          0xff666666),
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                      FontWeight
                                                          .w300,
                                                      fontFamily:
                                                      "Noto Sans KR",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 6,
                                                  ),
                                                  Container(
                                                    width: 46.sp,
                                                    height: 22.sp,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color(
                                                                0xffE95252)),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            5)),
                                                    child: Center(
                                                      child: Text(
                                                        "10만원",
                                                        style:
                                                        TextStyle(
                                                          color: Color(
                                                              0xffE95252),
                                                          fontSize:
                                                          10.sp,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                          fontFamily:
                                                          "Noto Sans KR",
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1.5,
                                            height: 10.5.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ))
                              : Center(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  loader = true;
                                });
                              },
                              child: Text(
                                "신청한 캠페인이 없습니다.",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Noto Sans KR"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.40,
              bottom: 10.sp,
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return FilterScreen();
                      }));
                },
                child: Container(
                    width: 80.sp,
                    height: 52.sp,
                    child:
                    Image.asset("assets/images/Filteri.png", fit: BoxFit.fill)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
