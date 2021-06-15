import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ApplicantsScreen extends StatefulWidget {
  @override
  _ApplicantsScreenState createState() => _ApplicantsScreenState();
}
bool accept = false;
class _ApplicantsScreenState extends State<ApplicantsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xff757575),
            ),
          ),
          title: Text(
            "신청자 목록",
            style: TextStyle(
              color: Color(0xff333333),
              fontWeight: FontWeight.bold,
              fontFamily: "Noto Sans KR",
            ),
          ),
          centerTitle: true,
          elevation: 1.5,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Container(
                height: 60,
                child: AppBar(
                    backgroundColor: Colors.white12,
                    elevation: 0,
                    bottom: TabBar(indicatorColor: Color(0xffEA9FA3), tabs: [
                      Tab(
                          child: Text(
                        "신청자 목록(55/5명)",
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Sans KR",
                        ),
                      )),
                      Tab(
                          child: Text(
                        "선정완료(5/5명)",
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Noto Sans KR",
                        ),
                      )),
                    ])),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 90,
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(5),
                                          child: Image.asset(
                                              "assets/images/test.jpg",
                                              fit: BoxFit.fitHeight),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          RatingBar.builder(
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 17,
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "지원자 닉네임",
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Noto Sans KR",
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Container(
                                            width: 123,
                                            child: Text(
                                              "신청자 간단한 한마디",
                                              style: TextStyle(
                                                color: Color(0xff666666),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Noto Sans KR",
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Container(
                                            width: 90,
                                            height: 23,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xff0BC95F)),
                                                borderRadius:
                                                BorderRadius.circular(5)),
                                            child: Center(
                                              child: RichText(
                                                  text: TextSpan(children: <
                                                      TextSpan>[
                                                    TextSpan(
                                                        text: "N",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color:
                                                            Color(0xff0BC95F),
                                                            fontFamily:
                                                            "Noto Sans KR",
                                                            fontWeight:
                                                            FontWeight.bold)),
                                                    TextSpan(
                                                        text: " 블로그 바로가기",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                            Color(0xff0BC95F),
                                                            fontFamily:
                                                            "Noto Sans KR",
                                                            fontWeight:
                                                            FontWeight.w300))
                                                  ])),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Container(
                                        width: 65,
                                        height: 38,
                                        decoration: BoxDecoration(
                                            color: Color(0xffF9F8F8),
                                            border: Border.all(
                                                color: Color(0xffD1D0D0)),
                                            borderRadius:
                                            BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text("선정취소",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Color(0xff000000),
                                                    fontFamily: "Noto Sans KR",
                                                    fontWeight:
                                                    FontWeight.w300))),
                                      )
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
                            Expanded(
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: 2,
                                  itemBuilder: (BuildContext context, int index) =>
                                      Container(
                                        margin: EdgeInsets.only(top: 8),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  width: 100,
                                                  height: 90,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                    child: Image.asset(
                                                        "assets/images/test.jpg",
                                                        fit: BoxFit.fitHeight),
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    RatingBar.builder(
                                                      initialRating: 3,
                                                      minRating: 1,
                                                      direction: Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemSize: 17,
                                                      itemBuilder: (context, _) => Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Text(
                                                      "지원자 닉네임",
                                                      style: TextStyle(
                                                        color: Color(0xff000000),
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w600,
                                                        fontFamily: "Noto Sans KR",
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Container(
                                                      width: 123,
                                                      child: Text(
                                                        "신청자 간단한 한마디",
                                                        style: TextStyle(
                                                          color: Color(0xff666666),
                                                          fontSize: 13,
                                                          fontWeight: FontWeight.w300,
                                                          fontFamily: "Noto Sans KR",
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 6,
                                                    ),
                                                    Container(
                                                      width: 90,
                                                      height: 23,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Color(0xff0BC95F)),
                                                          borderRadius:
                                                              BorderRadius.circular(5)),
                                                      child: Center(
                                                        child: RichText(
                                                            text: TextSpan(children: <
                                                                TextSpan>[
                                                          TextSpan(
                                                              text: "N",
                                                              style: TextStyle(
                                                                  fontSize: 11,
                                                                  color:
                                                                      Color(0xff0BC95F),
                                                                  fontFamily:
                                                                      "Noto Sans KR",
                                                                  fontWeight:
                                                                      FontWeight.bold)),
                                                          TextSpan(
                                                              text: " 블로그 바로가기",
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  color:
                                                                      Color(0xff0BC95F),
                                                                  fontFamily:
                                                                      "Noto Sans KR",
                                                                  fontWeight:
                                                                      FontWeight.w300))
                                                        ])),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 25,
                                                ),
                                                InkWell(
                                                  onTap: (){
                                                    accept = !accept;
                                                    setState(() {

                                                    });
                                                  },
                                                  child: Container(
                                                    width: 65,
                                                    height: 38,
                                                    decoration: BoxDecoration(
                                                        color: Color(0xffF9F8F8),
                                                        border: Border.all(
                                                            color: Color(0xffD1D0D0)),
                                                        borderRadius:
                                                            BorderRadius.circular(5)),
                                                    child: Center(
                                                        child: Text( accept ? "선정취소" :"선정",
                                                            style: TextStyle(
                                                                fontSize: 11,
                                                                color: Color(0xff000000),
                                                                fontFamily: "Noto Sans KR",
                                                                fontWeight:
                                                                    FontWeight.w300))),
                                                  ),
                                                )
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
                                      )),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // 2nd tap

                    ListView.builder(

                        scrollDirection: Axis.vertical,
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 90,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Image.asset(
                                              "assets/images/test.jpg",
                                              fit: BoxFit.fitHeight),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RatingBar.builder(
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 17,
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "지원자 닉네임",
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Noto Sans KR",
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Container(
                                            width: 123,
                                            child: Text(
                                              "방구석나부랭이(김**님)",
                                              style: TextStyle(
                                                color: Color(0xff666666),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Noto Sans KR",
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Container(
                                            width: 90,
                                            height: 23,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xff0BC95F)),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                              child: RichText(
                                                  text: TextSpan(children: <
                                                      TextSpan>[
                                                TextSpan(
                                                    text: "N",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xff0BC95F),
                                                        fontFamily:
                                                            "Noto Sans KR",
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text: " 블로그 바로가기",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xff0BC95F),
                                                        fontFamily:
                                                            "Noto Sans KR",
                                                        fontWeight:
                                                            FontWeight.w300))
                                              ])),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: 70,
                                        height: 38,
                                        decoration: BoxDecoration(
                                            color: Color(0xffF9F8F8),
                                            border: Border.all(
                                                color: Color(0xffD1D0D0)),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                            child: Text("선정취소",
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Color(0xff000000),
                                                    fontFamily: "Noto Sans KR",
                                                    fontWeight:
                                                        FontWeight.w300))),
                                      )
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
                            )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
