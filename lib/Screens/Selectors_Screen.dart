import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'main_Screen.dart';

class SelectorScreen extends StatefulWidget {
  @override
  _SelectorScreenState createState() => _SelectorScreenState();
}

class _SelectorScreenState extends State<SelectorScreen> {
  String ratingValue = '1.0';

  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return mydialog(
          f: () {
            Navigator.pop(context);
            setState(() {
              changebtn2 = true;
            });
          },
        );
      },
    );
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  bool changebtn1 = false;
  bool changebtn12 = false;
  bool changebtn2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "선정자 목록",
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
        child: Container(
          height: MediaQuery.of(context).size.height + 23,
          padding: EdgeInsets.only(top: 23, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "선정자 목록(5명)",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans KR"),
              ),
              Divider(
                thickness: 1,
                color: Color(0xffE1E1E1),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       width: 100,
              //       height: 90,
              //       child: ClipRRect(
              //         borderRadius: BorderRadius.circular(5),
              //         child: Image.asset("assets/images/test.jpg",
              //             fit: BoxFit.fitHeight),
              //       ),
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           "지원자 닉네임",
              //           style: TextStyle(
              //             color: Color(0xff000000),
              //             fontSize: 13,
              //             fontWeight: FontWeight.w600,
              //             fontFamily: "Noto Sans KR",
              //           ),
              //         ),
              //         SizedBox(
              //           height: 3,
              //         ),
              //         Text(
              //           "2021-01-01 10:00",
              //           style: TextStyle(
              //             color: Color(0xff666666),
              //             fontSize: 13,
              //             fontWeight: FontWeight.w300,
              //             fontFamily: "Noto Sans KR",
              //           ),
              //           overflow: TextOverflow.ellipsis,
              //         ),
              //         SizedBox(
              //           height: 3,
              //         ),
              //         Container(
              //           width: 123,
              //           child: Text(
              //             "신청자 간단한 한마디",
              //             style: TextStyle(
              //               color: Color(0xff666666),
              //               fontSize: 13,
              //               fontWeight: FontWeight.w300,
              //               fontFamily: "Noto Sans KR",
              //             ),
              //             overflow: TextOverflow.ellipsis,
              //           ),
              //         ),
              //         SizedBox(
              //           height: 6,
              //         ),
              //         InkWell(
              //           onTap: () {
              //             Navigator.push(context,
              //                 MaterialPageRoute(builder: (context) {
              //               return MainScreen();
              //             }));
              //           },
              //           child: Container(
              //             width: 90,
              //             height: 23,
              //             decoration: BoxDecoration(
              //                 border: Border.all(color: Color(0xff0BC95F)),
              //                 borderRadius: BorderRadius.circular(5)),
              //             child: Center(
              //               child: RichText(
              //                   text: TextSpan(children: <TextSpan>[
              //                 TextSpan(
              //                     text: "N",
              //                     style: TextStyle(
              //                         fontSize: 11,
              //                         color: Color(0xff0BC95F),
              //                         fontFamily: "Noto Sans KR",
              //                         fontWeight: FontWeight.bold)),
              //                 TextSpan(
              //                     text: " 블로그 바로가기",
              //                     style: TextStyle(
              //                         fontSize: 10,
              //                         color: Color(0xff0BC95F),
              //                         fontFamily: "Noto Sans KR",
              //                         fontWeight: FontWeight.w300))
              //               ])),
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     InkWell(
              //       onTap: () {
              //         setState(() {
              //           _makePhoneCall('tel:123456789');
              //         });
              //       },
              //       child: Container(
              //         width: 70,
              //         height: 38,
              //         decoration: BoxDecoration(
              //             color: Color(0xffF9F8F8),
              //             border: Border.all(color: Color(0xffD1D0D0)),
              //             borderRadius: BorderRadius.circular(5)),
              //         child: Center(
              //             child: Text("전화걸기",
              //                 style: TextStyle(
              //                     fontSize: 11,
              //                     color: Color(0xff000000),
              //                     fontFamily: "Noto Sans KR",
              //                     fontWeight: FontWeight.w300))),
              //       ),
              //     )
              //   ],
              // ),
              // SizedBox(
              //   height: 12,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     InkWell(
              //       onTap: () {
              //         setState(() {
              //           changebtn1 = !changebtn1;
              //         });
              //       },
              //       child: Container(
              //         width: MediaQuery.of(context).size.width * 0.45,
              //         height: 50,
              //         decoration: BoxDecoration(
              //             color: changebtn1
              //                 ? Color(0xffEA9FA3)
              //                 : Color(0xffF9F8F8),
              //             border: Border.all(
              //                 color: changebtn1
              //                     ? Color(0xffEA9FA3)
              //                     : Color(0xffD1D0D0)),
              //             borderRadius: BorderRadius.circular(5)),
              //         child: Center(
              //             child: Text(changebtn1 ? "서비스 이용확인" : "서비스 이용완료",
              //                 style: TextStyle(
              //                     fontSize: 12,
              //                     color: changebtn1
              //                         ? Colors.white
              //                         : Color(0xff666666),
              //                     fontFamily: "Noto Sans KR",
              //                     fontWeight: FontWeight.w300))),
              //       ),
              //     ),
              //     InkWell(
              //       onTap: () {
              //         setState(() {
              //           // changebtn2 = !changebtn2;
              //         });
              //       },
              //       child: Container(
              //         width: MediaQuery.of(context).size.width * 0.45,
              //         height: 50,
              //         decoration: BoxDecoration(
              //             color: //changebtn2?
              //                 Color(0xffEA9FA3),
              //             //: Color(0xffF9F8F8),
              //             border: Border.all(
              //                 color:
              //                     //changebtn2?
              //                     Color(0xffEA9FA3)),
              //             //:Color(0xffD1D0D0)),
              //             borderRadius: BorderRadius.circular(5)),
              //         child: Center(
              //             child: Text(
              //                 //changebtn2?
              //                 "미션 콘텐츠 보러가기",
              //                 //  : "미션 미등록",
              //                 style: TextStyle(
              //                     fontSize: 12,
              //                     color:
              //                         //changebtn2?
              //                         Colors.white,
              //                     //: Color(0xff666666),
              //                     fontFamily: "Noto Sans KR",
              //                     fontWeight: FontWeight.w300))),
              //       ),
              //     )
              //   ],
              // ),
              // SizedBox(
              //   height: 8,
              // ),
              // Container(
              //   height: 45,
              //   decoration: BoxDecoration(
              //       color: Color(0xffF9F8F8),
              //       border: Border.all(color: Color(0xffD1D0D0)),
              //       borderRadius: BorderRadius.circular(5)),
              //   child: Center(
              //       child: Text("평가완료",
              //           style: TextStyle(
              //               fontSize: 12,
              //               color: Color(0xff666666),
              //               fontFamily: "Noto Sans KR",
              //               fontWeight: FontWeight.w300))),
              // ),
              // SizedBox(
              //   height: 8,
              // ),
              // Divider(
              //   thickness: 1,
              //   color: Color(0xffE1E1E1),
              // ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) => Container(
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
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                          "assets/images/test.jpg",
                                          fit: BoxFit.fitHeight),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                      Text(
                                        "2021-01-01 10:00",
                                        style: TextStyle(
                                          color: Color(0xff666666),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Noto Sans KR",
                                        ),
                                        overflow: TextOverflow.ellipsis,
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
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return MainScreen();
                                          }));
                                        },
                                        child: Container(
                                          width: 90,
                                          height: 23,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xff0BC95F)),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: RichText(
                                                text: TextSpan(
                                                    children: <TextSpan>[
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
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _makePhoneCall('tel:123456789');
                                      });
                                    },
                                    child: Container(
                                      width: 70,
                                      height: 38,
                                      decoration: BoxDecoration(
                                          color: Color(0xffF9F8F8),
                                          border: Border.all(
                                              color: Color(0xffD1D0D0)),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child: Text("전화걸기",
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
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        changebtn12 = !changebtn12;
                                      });
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: changebtn12
                                              ? Color(0xffEA9FA3)
                                              : Color(0xffF9F8F8),
                                          border: Border.all(
                                              color: changebtn12
                                                  ? Color(0xffEA9FA3)
                                                  : Color(0xffD1D0D0)),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child: Text(
                                              changebtn12
                                                  ? "서비스 이용확인"
                                                  : "서비스 이용완료",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: changebtn12
                                                      ? Colors.white
                                                      : Color(0xff666666),
                                                  fontFamily: "Noto Sans KR",
                                                  fontWeight:
                                                      FontWeight.w300))),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(
                                              builder: (context) {
                                                return MainScreen();
                                              }));
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Color(0xffEA9FA3),
                                          border: Border.all(
                                              color: Color(0xffD1D0D0)),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child: Text("미션 콘텐츠 보러가기",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
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
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    //       changebtn2 = true;
                                    showAlertDialog(context);
                                  });
                                },
                                child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: changebtn2
                                          ? Color(0xff666666)
                                          : Color(0xffF9F8F8),
                                      border:
                                          Border.all(color: Color(0xffD1D0D0)),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: Text(changebtn2 ? "평가하기" : "평가완료",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: changebtn2
                                                  ? Colors.white
                                                  : Color(0xff666666),
                                              fontFamily: "Noto Sans KR",
                                              fontWeight: FontWeight.w300))),
                                ),
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
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class mydialog extends StatefulWidget {
  Function f;

  mydialog({this.f});

  @override
  _mydialogState createState() => _mydialogState();
}

class _mydialogState extends State<mydialog> {
  String ratingValue = '1.0';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "캠페인 선정자 평가하기",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          color: Color(0xff666666),
          fontWeight: FontWeight.bold,
          fontFamily: "Noto Sans KR",
        ),
      ),
      content: Container(
        height: 45,
        decoration: BoxDecoration(
            color: Color(0xffF9F8F8),
            border: Border.all(color: Color(0xffD1D0D0)),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "보통",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff333333),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Noto Sans KR",
                ),
              ),
              RatingBar.builder(
                onRatingUpdate: (v) {
                  setState(() {});
                  ratingValue = v.toString();
                },
                initialRating: double.parse(ratingValue),
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
              Text(
                ratingValue + "점",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Noto Sans KR",
                ),
              )
            ],
          ),
        ),
      ),
      actionsPadding: EdgeInsets.only(right: 15, bottom: 20, left: 15),
      actions: [
        InkWell(
          onTap: widget.f,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            decoration: BoxDecoration(
                color: Color(0xffEA9FA3),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
                child: Text(
              "평가완료",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontFamily: "Noto Sans KR",
              ),
            )),
          ),
        ),
      ],
    );
  }
}
