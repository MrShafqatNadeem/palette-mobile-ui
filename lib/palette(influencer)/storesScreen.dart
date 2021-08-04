import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/palette(influencer)/recruitment_campaign_screen.dart';
import 'package:palette/palette(influencer)/search_Screen.dart';
import 'package:palette/palette(influencer)/service_recruited_Screen_Insta.dart';
import 'filter_screen.dart';

class StoresScreen extends StatefulWidget {
  @override
  _StoresScreenState createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen>
    with SingleTickerProviderStateMixin {
  bool loader = false;
  bool changetab = false;
  int tabindex = 0;
  int selectindex = 0;
  int selectindex2 = 0;
  List<String> barnames = ["전체", "신규", "맛집", "카페", "헤어", "피부관리", "피트니스"];
  List<String> secoundbarnames = ["전체", "신규", "화장품", "식품", "건강보조", "숙소", "기타"];
  TabController _tabController;

  Future <void> _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    setState(() {
      loader = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, length: 7);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 812),
        orientation: Orientation.portrait);
    return Theme(
      data: ThemeData(
        primaryColor: Color(0xffEA9FA3),
      ),
      child:  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
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
                padding: EdgeInsets.only(left: 15, right: 15, top: 18.sp),
                child: Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        changetab = false;
                                        _tabController.animateTo(0);
                                      });
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context)
                                          .size
                                          .width *
                                          0.42,
                                      child: Center(
                                        child: Text(
                                          "방문형(오프라인)",
                                          style: TextStyle(
                                              color: changetab
                                                  ? Color(0xff999999)
                                                  : Color(0xff333333),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Noto Sans KR",
                                              fontSize: 16.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                  !changetab
                                      ? Container(
                                    margin: EdgeInsets.only(top: 12),
                                          height: 2,
                                          color: Color(0xffEA9FA3),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.42,
                                        )
                                      : Container(
                                    margin: EdgeInsets.only(top: 12),
                                          height: 2,
                                          width: 130,
                                        )
                                ],
                              ),
                              SizedBox(
                                width: 30.sp,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        changetab = true;
                                        _tabController.animateTo(0);
                                      });
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context)
                                          .size
                                          .width *
                                          0.42,
                                      child: Center(
                                        child: Text(
                                          "배송형(온라인)",
                                          style: TextStyle(
                                              color: changetab
                                                  ? Color(0xff333333)
                                                  : Color(0xff999999),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Noto Sans KR",
                                              fontSize: 16.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                  changetab
                                      ? Container(
                                          margin: EdgeInsets.only(top: 12),
                                          height: 2,
                                          color: Color(0xffEA9FA3),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.42,
                                        )
                                      : Container(
                                    margin: EdgeInsets.only(top: 12),
                                          height: 2,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        )
                                ],
                              )
                            ])),
                    Container(
                      width: MediaQuery.of(context).size.width * 1.2,
                      height: 48,
                      child: AppBar(
                          backgroundColor: Color(0xffF9F8F8),
                          elevation: 0,
                          bottom: changetab
                              ? TabBar(
                                  controller: _tabController,
                                  indicatorWeight: 0,
                                  isScrollable: true,
                                  unselectedLabelColor: Color(0xff666666),
                                  unselectedLabelStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Noto Sans KR",
                                      fontSize: 13.sp),
                                  labelColor: Colors.white,
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Noto Sans KR",
                                      fontSize: 13.sp),
                                  indicator: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(80.sp),
                                      // Creates border
                                      color: Color(0xffEA9FA3)),
                                  tabs: [
                                      Tab(
                                        iconMargin: EdgeInsets.only(bottom: 0),
                                        text: "전체",
                                      ),
                                      Tab(
                                        text: "신규",
                                      ),
                                      Tab(
                                        text: "화장품",
                                      ),
                                      Tab(
                                        text: "식품",
                                      ),
                                      Tab(
                                        text: "건강보조",
                                      ),
                                      Tab(
                                        text: "숙소",
                                      ),
                                      Tab(
                                        text: "기타",
                                      ),
                                    ])
                              : TabBar(
                                  controller: _tabController,
                                  isScrollable: true,
                                  indicatorWeight: 0,
                                  unselectedLabelColor: Color(0xff666666),
                                  unselectedLabelStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Noto Sans KR",
                                      fontSize: 13.sp),
                                  labelColor: Colors.white,
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Noto Sans KR",
                                      fontSize: 13.sp),
                                  indicator: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(80.sp),
                                      // Creates border
                                      color: Color(0xffEA9FA3)),
                                  tabs: [
                                      Tab(
                                        text: "전체",
                                      ),
                                      Tab(
                                        text: "신규",
                                      ),
                                      Tab(
                                        text: "맛집",
                                      ),
                                      Tab(
                                        text: "카페",
                                      ),
                                      Tab(
                                        text: "헤어",
                                      ),
                                      Tab(
                                        text: "피부관리",
                                      ),
                                      Tab(
                                        text: "피트니스",
                                      ),
                                    ])),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          RefreshIndicator(
                            onRefresh: _onRefresh,
                            color:  Color(0xffEA9FA3),
                            child:
                              loader
                              ? ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 4,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          InkWell(
                                            onTap: () {
                                              index == 2
                                                  ? Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? ServiceRecruitedInstsScreen(
                                                              offline: false,
                                                            )
                                                          : ServiceRecruitedInstsScreen(
                                                              offline: true,
                                                            );
                                                    }))
                                                  : Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: false,
                                                            )
                                                          : RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: true,
                                                            );
                                                    }));
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(top: 8),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
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
                                                                      top:
                                                                          10.sp,
                                                                      left: 10
                                                                          .sp),
                                                                  width: 46.sp,
                                                                  height: 22.sp,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xffE95252),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "진행중",
                                                                      style: TextStyle(
                                                                          fontSize: 10
                                                                              .sp,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontFamily:
                                                                              "Noto Sans KR"),
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
                                                                index == 2
                                                                    ? TextSpan(
                                                                        text:
                                                                            "Instagram",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                14.sp,
                                                                            color: Color(0xffD00373),
                                                                            fontWeight: FontWeight.w700,
                                                                            fontFamily: "yanoljayache"),
                                                                      )
                                                                    : TextSpan(
                                                                        text:
                                                                            "Blog",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14.sp,
                                                                          color:
                                                                              Color(0xff00C5B1),
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
                                                    thickness: 1,
                                                    color: Color(0xffE1E1E1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ))
                              : ListView(
                             children: [
                               Container(
                                 height: MediaQuery.of(context).size.height/2,
                                 child: Center(
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
                               )

  ]
                              )),
                          // 2nd tap

                      RefreshIndicator(
                        onRefresh: _onRefresh,
                        color:  Color(0xffEA9FA3),
                        child: loader
                              ? ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 4,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          InkWell(
                                            onTap: () {
                                              index == 2
                                                  ? Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? ServiceRecruitedInstsScreen(
                                                              offline: false,
                                                            )
                                                          : ServiceRecruitedInstsScreen(
                                                              offline: true,
                                                            );
                                                    }))
                                                  : Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: false,
                                                            )
                                                          : RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: true,
                                                            );
                                                    }));
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(top: 8),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
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
                                                                      top:
                                                                          10.sp,
                                                                      left: 10
                                                                          .sp),
                                                                  width: 46.sp,
                                                                  height: 22.sp,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xffE95252),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "진행중",
                                                                      style: TextStyle(
                                                                          fontSize: 10
                                                                              .sp,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontFamily:
                                                                              "Noto Sans KR"),
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
                                                                index == 2
                                                                    ? TextSpan(
                                                                        text:
                                                                            "Instagram",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                14.sp,
                                                                            color: Color(0xffD00373),
                                                                            fontWeight: FontWeight.w700,
                                                                            fontFamily: "yanoljayache"),
                                                                      )
                                                                    : TextSpan(
                                                                        text:
                                                                            "Blog",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14.sp,
                                                                          color:
                                                                              Color(0xff00C5B1),
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
                                                    thickness: 1,
                                                    color: Color(0xffE1E1E1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ))
                              : ListView(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height/2,
                                  child: Center(
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
                                )

                              ]
                          )),
                          // 3rd tab
                      RefreshIndicator(
                        onRefresh: _onRefresh,
                        color:  Color(0xffEA9FA3),
                        child:  loader
                              ? ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 4,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          InkWell(
                                            onTap: () {
                                              index == 2
                                                  ? Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? ServiceRecruitedInstsScreen(
                                                              offline: false,
                                                            )
                                                          : ServiceRecruitedInstsScreen(
                                                              offline: true,
                                                            );
                                                    }))
                                                  : Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: false,
                                                            )
                                                          : RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: true,
                                                            );
                                                    }));
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(top: 8),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
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
                                                                      top:
                                                                          10.sp,
                                                                      left: 10
                                                                          .sp),
                                                                  width: 46.sp,
                                                                  height: 22.sp,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xffE95252),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "진행중",
                                                                      style: TextStyle(
                                                                          fontSize: 10
                                                                              .sp,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontFamily:
                                                                              "Noto Sans KR"),
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
                                                                index == 2
                                                                    ? TextSpan(
                                                                        text:
                                                                            "Instagram",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                14.sp,
                                                                            color: Color(0xffD00373),
                                                                            fontWeight: FontWeight.w700,
                                                                            fontFamily: "yanoljayache"),
                                                                      )
                                                                    : TextSpan(
                                                                        text:
                                                                            "Blog",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14.sp,
                                                                          color:
                                                                              Color(0xff00C5B1),
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
                                                    thickness: 1,
                                                    color: Color(0xffE1E1E1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ))
                              : ListView(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/2,
                                child: Center(
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
                              )

                            ]
                        )),
                          //4th tab
                      RefreshIndicator(
                        onRefresh: _onRefresh,
                        color:  Color(0xffEA9FA3),
                        child: loader
                              ? ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 4,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          InkWell(
                                            onTap: () {
                                              index == 2
                                                  ? Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? ServiceRecruitedInstsScreen(
                                                              offline: false,
                                                            )
                                                          : ServiceRecruitedInstsScreen(
                                                              offline: true,
                                                            );
                                                    }))
                                                  : Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: false,
                                                            )
                                                          : RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: true,
                                                            );
                                                    }));
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(top: 8),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
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
                                                                      top:
                                                                          10.sp,
                                                                      left: 10
                                                                          .sp),
                                                                  width: 46.sp,
                                                                  height: 22.sp,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xffE95252),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "진행중",
                                                                      style: TextStyle(
                                                                          fontSize: 10
                                                                              .sp,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontFamily:
                                                                              "Noto Sans KR"),
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
                                                                index == 2
                                                                    ? TextSpan(
                                                                        text:
                                                                            "Instagram",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                14.sp,
                                                                            color: Color(0xffD00373),
                                                                            fontWeight: FontWeight.w700,
                                                                            fontFamily: "yanoljayache"),
                                                                      )
                                                                    : TextSpan(
                                                                        text:
                                                                            "Blog",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14.sp,
                                                                          color:
                                                                              Color(0xff00C5B1),
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
                                                    thickness: 1,
                                                    color: Color(0xffE1E1E1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ))
                              : ListView(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/2,
                                child: Center(
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
                              )

                            ]
                        )),
                          //5th tab
                      RefreshIndicator(
                        onRefresh: _onRefresh,
                        color:  Color(0xffEA9FA3),
                        child: loader
                              ? ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 4,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          InkWell(
                                            onTap: () {
                                              index == 2
                                                  ? Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? ServiceRecruitedInstsScreen(
                                                              offline: false,
                                                            )
                                                          : ServiceRecruitedInstsScreen(
                                                              offline: true,
                                                            );
                                                    }))
                                                  : Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: false,
                                                            )
                                                          : RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: true,
                                                            );
                                                    }));
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(top: 8),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
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
                                                                      top:
                                                                          10.sp,
                                                                      left: 10
                                                                          .sp),
                                                                  width: 46.sp,
                                                                  height: 22.sp,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xffE95252),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "진행중",
                                                                      style: TextStyle(
                                                                          fontSize: 10
                                                                              .sp,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontFamily:
                                                                              "Noto Sans KR"),
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
                                                                index == 2
                                                                    ? TextSpan(
                                                                        text:
                                                                            "Instagram",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                14.sp,
                                                                            color: Color(0xffD00373),
                                                                            fontWeight: FontWeight.w700,
                                                                            fontFamily: "yanoljayache"),
                                                                      )
                                                                    : TextSpan(
                                                                        text:
                                                                            "Blog",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14.sp,
                                                                          color:
                                                                              Color(0xff00C5B1),
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
                                                    thickness: 1,
                                                    color: Color(0xffE1E1E1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ))
                              : ListView(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/2,
                                child: Center(
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
                              )

                            ]
                        )),
                          //6th tab
                      RefreshIndicator(
                        onRefresh: _onRefresh,
                        color:  Color(0xffEA9FA3),
                        child: loader
                              ? ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 4,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          InkWell(
                                            onTap: () {
                                              index == 2
                                                  ? Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? ServiceRecruitedInstsScreen(
                                                              offline: false,
                                                            )
                                                          : ServiceRecruitedInstsScreen(
                                                              offline: true,
                                                            );
                                                    }))
                                                  : Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: false,
                                                            )
                                                          : RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: true,
                                                            );
                                                    }));
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(top: 8),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
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
                                                                      top:
                                                                          10.sp,
                                                                      left: 10
                                                                          .sp),
                                                                  width: 46.sp,
                                                                  height: 22.sp,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xffE95252),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "진행중",
                                                                      style: TextStyle(
                                                                          fontSize: 10
                                                                              .sp,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontFamily:
                                                                              "Noto Sans KR"),
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
                                                                index == 2
                                                                    ? TextSpan(
                                                                        text:
                                                                            "Instagram",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                14.sp,
                                                                            color: Color(0xffD00373),
                                                                            fontWeight: FontWeight.w700,
                                                                            fontFamily: "yanoljayache"),
                                                                      )
                                                                    : TextSpan(
                                                                        text:
                                                                            "Blog",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14.sp,
                                                                          color:
                                                                              Color(0xff00C5B1),
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
                                                    thickness: 1,
                                                    color: Color(0xffE1E1E1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ))
                              : ListView(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/2,
                                child: Center(
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
                              )

                            ]
                        )),
                          //7th tab
                      RefreshIndicator(
                        onRefresh: _onRefresh,
                        color:  Color(0xffEA9FA3),
                        child:


                        loader
                              ? ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 4,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          InkWell(
                                            onTap: () {
                                              index == 2
                                                  ? Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? ServiceRecruitedInstsScreen(
                                                              offline: false,
                                                            )
                                                          : ServiceRecruitedInstsScreen(
                                                              offline: true,
                                                            );
                                                    }))
                                                  : Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                      return changetab
                                                          ? RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: false,
                                                            )
                                                          : RecruitmentCampaignScreen(
                                                              change: false,
                                                              offline: true,
                                                            );
                                                    }));
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(top: 8),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
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
                                                                      top:
                                                                          10.sp,
                                                                      left: 10
                                                                          .sp),
                                                                  width: 46.sp,
                                                                  height: 22.sp,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xffE95252),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3)),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "진행중",
                                                                      style: TextStyle(
                                                                          fontSize: 10
                                                                              .sp,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontFamily:
                                                                              "Noto Sans KR"),
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
                                                                index == 2
                                                                    ? TextSpan(
                                                                        text:
                                                                            "Instagram",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                14.sp,
                                                                            color: Color(0xffD00373),
                                                                            fontWeight: FontWeight.w700,
                                                                            fontFamily: "yanoljayache"),
                                                                      )
                                                                    : TextSpan(
                                                                        text:
                                                                            "Blog",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14.sp,
                                                                          color:
                                                                              Color(0xff00C5B1),
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
                                                    thickness: 1,
                                                    color: Color(0xffE1E1E1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ))
                              : ListView(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height/2,
                                child: Center(
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
                              )

                            ]
                        )),
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
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FilterScreen();
                          }));
                        },
                        child: Image.asset("assets/images/Filteri.png",
                            fit: BoxFit.fill))

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
