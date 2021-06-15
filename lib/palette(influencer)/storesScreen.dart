import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/palette(influencer)/recruitment_campaign_screen.dart';
import 'package:palette/palette(influencer)/search_Screen.dart';

import 'filter_screen.dart';

class StoresScreen extends StatefulWidget {
  @override
  _StoresScreenState createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  bool loader = false;
  int tabindex = 0;
  int selectindex = 0;
  int selectindex2 = 0;
  List<String> barnames = ["전체", "신규", "맛집", "카페", "헤어", "피부관리", "피트니스"];
  List<String> secoundbarnames = ["전체", "신규", "화장품", "식품", "건강보조", "숙소", "기타"];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 812),
        orientation: Orientation.portrait);
    return DefaultTabController(
      length: 2,
      initialIndex: tabindex,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text(
            "대전광역시 서구",
            style: TextStyle(
              color: Color(0xff333333),
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              fontFamily: "Noto Sans KR",
            ),
          ),
          actions: [
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return SearchScreen();
                    }));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.search,
                  color: Color(0xff757575),
                ),
              ),
            )
          ],
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
                                "방문형(오프라인)",
                                style: TextStyle(
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Noto Sans KR",
                                    fontSize: 16.sp),
                              )),
                              Tab(
                                  child: Text(
                                "배송형(온라인)",
                                style: TextStyle(
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w500,
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
                        Column(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                color: Color(0xffF9F8F8),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: barnames.length,
                                    itemBuilder: (BuildContext context,
                                            int index) =>
                                        selectindex == index
                                            ? Container(
                                                margin: EdgeInsets.only(
                                                    top: 8,
                                                    bottom: 8,
                                                    left: 10),
                                                decoration: BoxDecoration(
                                                    color: Color(0xffEB9FA3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            17)),
                                                child: Center(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    child: Text(
                                                      barnames[index],
                                                      style: TextStyle(
                                                          fontSize: 13.sp,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              "Noto Sans KR"),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    selectindex = index;
                                                  });

                                                },
                                                child: Container(
                                                  padding:
                                                      EdgeInsets.only(left: 15),
                                                  height: 28.sp,
                                                  child: Center(
                                                      child: Text(
                                                    barnames[index],
                                                    style: TextStyle(
                                                        fontSize: 13.sp,
                                                        color:
                                                            Color(0xff666666),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily:
                                                            "Noto Sans KR"),
                                                  )),
                                                ),
                                              ))
                                ),
                            Expanded(
                              child: loader
                                  ? ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: 4,
                                      itemBuilder:
                                          (BuildContext context, int index) =>
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(context,
                                                      MaterialPageRoute(builder: (context) {
                                                        return RecruitmentCampaignScreen(change: false);
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
                                                          Stack(
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
                                                              index == 1
                                                                  ? Container(
                                                                      margin: EdgeInsets.only(
                                                                          top: 10
                                                                              .sp,
                                                                          left: 10
                                                                              .sp),
                                                                      width:
                                                                          46.sp,
                                                                      height:
                                                                          22.sp,
                                                                      decoration: BoxDecoration(
                                                                          color: Color(
                                                                              0xffE95252),
                                                                          borderRadius:
                                                                              BorderRadius.circular(3)),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Text(
                                                                          "진행중",
                                                                          style: TextStyle(
                                                                              fontSize:
                                                                                  10.sp,
                                                                              color: Colors.white,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontFamily: "Noto Sans KR"),
                                                                        ),
                                                                      ),
                                                                    )
                                                                  : Container()
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 20,
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
                                                                height: 3,
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
                                                                height: 10,
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
                                                      SizedBox(
                                                        height: 8,
                                                      ),
                                                      Divider(
                                                        thickness: 1.5,
                                                        color: Color(0xffE1E1E1),
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
                                          "등록된 데이터가 없습니다.",
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

                        // 2nd tap

                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.height,
                              height: 50,
                              color: Color(0xffF9F8F8),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: secoundbarnames.length,
                                  itemBuilder: (BuildContext context,
                                      int index) =>
                                  selectindex2 == index
                                      ? Container(
                                    margin: EdgeInsets.only(
                                        top: 8,
                                        bottom: 8,
                                        left: 10),
                                    decoration: BoxDecoration(
                                        color: Color(0xffEB9FA3),
                                        borderRadius:
                                        BorderRadius.circular(
                                            17)),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          secoundbarnames[index],
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: Colors.white,
                                              fontWeight:
                                              FontWeight.w500,
                                              fontFamily:
                                              "Noto Sans KR"),
                                        ),
                                      ),
                                    ),
                                  )
                                      : InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectindex2 = index;
                                      });
                                    },
                                    child: Container(
                                      padding:
                                      EdgeInsets.only(left: 15),
                                      height: 28.sp,
                                      child: Center(
                                          child: Text(
                                            secoundbarnames[index],
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                color:
                                                Color(0xff666666),
                                                fontWeight:
                                                FontWeight.w500,
                                                fontFamily:
                                                "Noto Sans KR"),
                                          )),
                                    ),
                                  ))
                            ),
                            Expanded(
                              child: loader
                                  ? ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: 4,
                                      itemBuilder:
                                          (BuildContext context, int index) =>
                                              Container(
                                                margin: EdgeInsets.only(top: 8),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Stack(
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
                                                            index == 1
                                                                ? Container(
                                                                    margin: EdgeInsets.only(
                                                                        top: 10
                                                                            .sp,
                                                                        left: 10
                                                                            .sp),
                                                                    width:
                                                                        46.sp,
                                                                    height:
                                                                        22.sp,
                                                                    decoration: BoxDecoration(
                                                                        color: Color(
                                                                            0xffE95252),
                                                                        borderRadius:
                                                                            BorderRadius.circular(3)),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        "진행중",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                10.sp,
                                                                            color: Colors.white,
                                                                            fontWeight: FontWeight.w500,
                                                                            fontFamily: "Noto Sans KR"),
                                                                      ),
                                                                    ),
                                                                  )
                                                                : Container()
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 20,
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
                                                              height: 3,
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
                                                              height: 10,
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
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Divider(
                                                      thickness: 1.5,
                                                      color: Color(0xffE1E1E1),
                                                    ),
                                                  ],
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
                                          "등록된 데이터가 없습니다.",
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
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.40,
              bottom: 10.sp,
              child: Container(
                  width: 80.sp,
                  height: 52.sp,
                  child:
                      InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return FilterScreen();
                                }));
                          },
                          child: Image.asset("assets/images/Filteri.png", fit: BoxFit.fill))

                  // Center(
                  //   child:
                  //
                  //   Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Icon(
                  //         Icons.dehaze,
                  //         color: Colors.white,
                  //         size: 20,
                  //       ),
                  //       Text(
                  //         " 필터",
                  //         style: TextStyle(
                  //             fontSize: 13.sp,
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.w500,
                  //             fontFamily: "Noto Sans KR"),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
