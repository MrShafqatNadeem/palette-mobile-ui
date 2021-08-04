import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:palette/Screens/registering_campaign_Screen.dart';

import 'Selectors_Screen.dart';
import 'applicants_Screen.dart';

class CampaignCompletedScreen extends StatefulWidget {
  // static const String idScreen = "CampaignScreen";
  @override
  _CampaignCompletedScreenState createState() =>
      _CampaignCompletedScreenState();
}

class _CampaignCompletedScreenState extends State<CampaignCompletedScreen> {
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      titlePadding: EdgeInsets.all(0),
      title: Container(
        height: 40,
        color: Color(0xffEB9FA3),
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            "설정",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Noto Sans KR",
            ),
          ),
        ),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RegisteringcampaignScreen(
                    change: true,
                  )));
            },
            child: Text(
              "수정하기                    ",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff666666),
                fontWeight: FontWeight.w300,
                fontFamily: "Noto Sans KR",
              ),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          InkWell(
            onTap: () {
              showAlertDialog1(context);
            },
            child: Text(
              "삭제하기                    ",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff666666),
                fontWeight: FontWeight.w300,
                fontFamily: "Noto Sans KR",
              ),
            ),
          )
        ],
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog1(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "정말로 삭제하시겠습니까?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Color(0xff666666),
              fontWeight: FontWeight.w400,
              fontFamily: "Noto Sans KR",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 100,
                  height: 42,
                  decoration: BoxDecoration(
                      color: Color(0xffEB9FA3),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Text(
                        "네",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Noto Sans KR",
                        ),
                      )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 100,
                  height: 42,
                  decoration: BoxDecoration(
                      color: Color(0xffAAAAAA),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Text(
                        "아니오",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Noto Sans KR",
                        ),
                      )),
                ),
              ),
            ],
          )
        ],
      ),
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
    return Scaffold(
        backgroundColor: Colors.white,
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
            "완료된 캠페인",
            style: TextStyle(
              color: Color(0xff333333),
              fontWeight: FontWeight.bold,
              fontFamily: "Noto Sans KR",
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: InkWell(
                onTap: () {
                  showAlertDialog(context);
                },
                child: Icon(
                  Icons.more_horiz,
                  color: Color(0xff757575),
                ),
              ),
            )
          ],
          centerTitle: true,
          elevation: 1.5,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 20, right: 15, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "(서비스 제목 표시)[대전] 더예쁜 손톱레푸스 둔산점",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "대전에서 가장 핫한 네일아트전문점",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(height: 10),
                        //blog container
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width*0.1,
                                height:MediaQuery.of(context).size.height*0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(
                                    color: Color(0xff0BC95F),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Blog",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff0BC95F),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Noto Sans KR"),
                                  ),
                                )),
                            SizedBox(width: 5),
                            Container(
                              width: MediaQuery.of(context).size.width*0.1,
                              height:MediaQuery.of(context).size.height*0.03,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                  color: Color(0xffE95252),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "10만원",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xffE95252),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Noto Sans KR"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 30,
                          thickness: 1,
                        ),
                        //4 text + image container
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "캠페인 신청기간",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff000000),
                                              fontFamily: "Noto Sans KR",
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: "    01.04 ~ 01.10",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff000000),
                                              fontFamily: "Noto Sans KR",
                                              fontWeight: FontWeight.w300))
                                    ])),
                                SizedBox(
                                  height: 4,
                                ),
                                RichText(
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "인플루언서 발표",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff666666),
                                              fontFamily: "Noto Sans KR",
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: "    01.11",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff666666),
                                              fontFamily: "Noto Sans KR",
                                              fontWeight: FontWeight.w300))
                                    ])),
                                SizedBox(
                                  height: 4,
                                ),
                                RichText(
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "캠페인 이용기간",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff666666),
                                              fontFamily: "Noto Sans KR",
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: "    01.11 ~ 01.25",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff666666),
                                              fontFamily: "Noto Sans KR",
                                              fontWeight: FontWeight.w300))
                                    ])),
                                SizedBox(
                                  height: 4,
                                ),
                                RichText(
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "콘텐츠 등록기간",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff666666),
                                              fontFamily: "Noto Sans KR",
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: "    01.25 ~ 02.07",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff666666),
                                              fontFamily: "Noto Sans KR",
                                              fontWeight: FontWeight.w300))
                                    ])),
                              ],
                            ),
                            Container(
                              width: 100,
                              height: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(3),
                                child: Image.asset("assets/images/test.jpg",
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Divider(
                          thickness: 10,
                          color: Color(0xffF9F8F8),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          "캠페인 정보",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans KR"),
                        ),
                        Divider(
                          height: 30,
                          thickness: 1,
                        ),

                        Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset("assets/images/test.jpg",
                              fit: BoxFit.fill),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0xffF9F8F8),
                              border: Border.all(color: Color(0xffD1D0D0)),
                              borderRadius: BorderRadius.circular(3)),
                          child: Center(
                              child: Text("상세페이지 더보기",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff666666),
                                      fontFamily: "Noto Sans KR",
                                      fontWeight: FontWeight.w300))),
                        ),

                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "제공내역",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "서비스 제공에 대한 내용 표시",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "예시. 1인 1회 / 1~3번 중 택 1 ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "1. 10만원 상당의 젤네일 또는 젤패디 택 1 ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "2. 속눈썹 리프팅 펌 + 틴팅(8만원 상당) ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "3. 내성발톱 교정 \n 대리인 가능하나 인플루언서 동반필수",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),

                        Divider(
                          height: 50,
                          thickness: 1,
                        ),
                        Text(
                          "방문 및 예약안내",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "- 주소 : 대전광역시 서구 둔산동 111, 1층 ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 인플루언서 방문 가능 시간 : 평일 10:00~21:00 ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 영업시간 : 평일 10:00~21:00 / 토요일 : 10:00~20:00 ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "     일요일 및 공휴일 휴무(리뷰시 참고) ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 주말방문 불가",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                        ),

                        Text(
                          "검색 키워드",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "#대전네일아트전문점, #대전내성발톱, #둔산동네일샵,",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "#둔산동속눈썹리프팅펌",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 안내드린 키워드 중 2개 이상을 선택하여 제목과 본문, #태그에 꼭 넣어주세요.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 키워드가 지켜지지 않을 경우 수정요청이 있을 수 있습니다",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- #협찬, #유료광고 등 표시광고법 관련 태그는 본문 제일 앞에 삽입 하여 제출해주세요.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        Divider(
                          height: 50,
                          thickness: 1,
                        ),



                        Text(
                          "캠페인 미션",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "- SNS 등록시 제목에 매장명을 꼭 기재해주세요.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 매장 위치 및 지도, 연락처, 운영시간을 소개해주세요.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 제공받으신 서비스 및 인테리어 등의 사진 15장 이상, 동영상 10초 이상을 촬영, 등록해주세요",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          " ※ 타인의 얼굴 노출 시 초상권 문제가 있을 수 있으니, 타인의 얼굴이 노출되지 않아도록 참고 부탁드립니다.",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-업체의 홈페이지 주소를 꼭 삽입해주세요. http://naver.com(업체 홈페이지 주소 노출) ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 팔레트 서비스 URL 주소를 꼭 삽입해주세요. http://naver.com(팔레트 서비스 URL 주소 노출)",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        Divider(
                          height: 50,
                          thickness: 1,
                        ),


                        Text(
                          "팔레트 필독 안내사항",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "- 초과비용 발생시 본인 부담 / 타쿠폰 적용불가",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 예약 후 방문에 어려움이 발생한 경우, 미리 업체측 및 팔레트 측에 일정을 공유해주셔야 하며 예약 후 방문하지 않은 노쇼의 경우 다음 서비스 참여가 제한됩니다. ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 작성하신 컨텐츠는 6개월 이상 유지해야하며 미 유지시 패널티 (서비스 참여 제한) 부과 됩니다.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ]),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return SelectorScreen();
                      }));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xffEA9FA3),
                      borderRadius: BorderRadius.circular(3)),
                  child: Center(
                      child: Text("신청자 목록보기",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: "Noto Sans KR",
                              fontWeight: FontWeight.w300))),
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ));
  }
}
