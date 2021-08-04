import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/palette(influencer)/service_recruited_Screen_Insta.dart';

import 'apply_for_campaign_screen.dart';
import 'content_registration_screen.dart';
import 'package:url_launcher/url_launcher.dart';
class OnGoingCampaignScreen extends StatefulWidget {
  bool insta;

  OnGoingCampaignScreen({this.insta});

  @override
  _OnGoingCampaignScreenState createState() => _OnGoingCampaignScreenState();
}

class _OnGoingCampaignScreenState extends State<OnGoingCampaignScreen> {
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
              fontSize: 14.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: "Noto Sans KR",
            ),
          ),
        ),
      ),
      content: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Text(
          "캠페인 신청 취소",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 16.sp,
            color: Color(0xff666666),
            fontWeight: FontWeight.w400,
            fontFamily: "Noto Sans KR",
          ),
        ),
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
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 812),
        orientation: Orientation.portrait);
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
            "진행중인 캠페인",
            style: TextStyle(
              color: Color(0xff333333),
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
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
          padding: EdgeInsets.only(top: 31.5.sp, right: 20.sp, left: 20.sp),
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
                              fontSize: 16.5.sp,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(height: 9.sp),
                        Text(
                          "대전에서 가장 핫한 네일아트전문점",
                          style: TextStyle(
                              fontSize: 14.5.sp,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(height: 16.sp),
                        //blog container
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            widget.insta
                                ? Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.165,
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      border: Border.all(
                                        color: Color(0xffD00373),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Instagram",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xffD00373),
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "yanoljayache"),
                                      ),
                                    ))
                                : Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
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
                                            fontSize: 14.sp,
                                            color: Color(0xff0BC95F),
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "yanoljayache"),
                                      ),
                                    )),
                            SizedBox(width: 8.sp),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.03,
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
                                      fontSize: 10.sp,
                                      color: Color(0xffE95252),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Noto Sans KR"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 46.sp,
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
                                          fontSize: 13.sp,
                                          color: Color(0xff000000),
                                          fontFamily: "Noto Sans KR",
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: "    01.04 ~ 01.10",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Color(0xff000000),
                                          fontFamily: "Noto Sans KR",
                                          fontWeight: FontWeight.w500))
                                ])),
                                SizedBox(
                                  height: 8.sp,
                                ),
                                RichText(
                                    text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: "인플루언서 발표",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Color(0xff666666),
                                          fontFamily: "Noto Sans KR",
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "    01.11",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Color(0xff666666),
                                          fontFamily: "Noto Sans KR",
                                          fontWeight: FontWeight.w400))
                                ])),
                                SizedBox(
                                  height: 8.sp,
                                ),
                                RichText(
                                    text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: "콘텐츠 등록기간",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Color(0xff666666),
                                          fontFamily: "Noto Sans KR",
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "    01.11 ~ 01.25",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Color(0xff666666),
                                          fontFamily: "Noto Sans KR",
                                          fontWeight: FontWeight.w400))
                                ])),
                                SizedBox(
                                  height: 8.sp,
                                ),
                                RichText(
                                    text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: "캠페인 종료일",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Color(0xff666666),
                                          fontFamily: "Noto Sans KR",
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "        01.25",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Color(0xff666666),
                                          fontFamily: "Noto Sans KR",
                                          fontWeight: FontWeight.w400))
                                ])),
                              ],
                            ),
                            Container(
                              width: 95.sp,
                              height: 95.sp,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(3),
                                child: Image.asset("assets/images/test.jpg",
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 21.sp,
                        ),
                        Divider(
                          thickness: 10.sp,
                          color: Color(0xffF9F8F8),
                        ),
                        SizedBox(
                          height: 22.sp,
                        ),
                        Text(
                          "서비스 정보",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Noto Sans KR"),
                        ),
                        Divider(
                          height: 41.sp,
                          thickness: 1,
                        ),

                        Container(
                          height: 248.1.sp,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset("assets/images/test.jpg",
                              fit: BoxFit.fill),
                        ),

                        SizedBox(
                          height: 26.sp,
                        ),
                        Text(
                          "제공내역",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        Text(
                          "서비스 제공에 대한 내용 표시",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "예시. 1인 1회 / 1~3번 중 택 1 ",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "1. 10만원 상당의 젤네일 또는 젤패디 택 1 ",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "2. 속눈썹 리프팅 펌 + 틴팅(8만원 상당) ",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "3. 내성발톱 교정 \n 대리인 가능하나 인플루언서 동반필수",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),

                        Divider(
                          height: 56.sp,
                          thickness: 1,
                        ),
                        // box 2
                        Text(
                          "방문 및 예약안내",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        Text(
                          "- 주소 : 대전광역시 서구 둔산동 111, 1층 ",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 인플루언서 방문 가능 시간 : 평일 10:00~21:00 ",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 영업시간 : 평일 10:00~21:00 / 토요일 : 10:00~20:00 ",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "     일요일 및 공휴일 휴무(리뷰시 참고) ",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 주말방문 불가",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        Divider(
                          height: 56.sp,
                          thickness: 1,
                        ),

                        Text(
                          "검색 키워드",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        Text(
                          "#대전네일아트전문점, #대전내성발톱, #둔산동네일샵,",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "#둔산동속눈썹리프팅펌",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 안내드린 키워드 중 2개 이상을 선택하여 제목과 본문, #태그에 꼭 넣어주세요.",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 키워드가 지켜지지 않을 경우 수정요청이 있을 수 있습니다",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        Divider(
                          height: 56.sp,
                          thickness: 1,
                        ),

                        // box 3
                        Text(
                          "서비스 미션",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        Text(
                          "- SNS 등록시 제목에 매장명을 꼭 기재해주세요.",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 매장 위치 및 지도, 연락처, 운영시간을 소개해주세요.",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 제공받으신 서비스 및 인테리어 등의 사진 15장 이상, 동영상 10초 이상을 촬영, 등록해주세요",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          " ※ 타인의 얼굴 노출 시 초상권 문제가 있을 수 있으니, 타인의 얼굴이 노출되지 않아도록 참고 부탁드립니다.",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-업체의 홈페이지 주소를 꼭 삽입해주세요. http://naver.com(업체 홈페이지 주소 노출) ",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 팔레트 서비스 URL 주소를 꼭 삽입해주세요. http://naver.com(팔레트 서비스 URL 주소 노출)",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        Divider(height: 56.sp, thickness: 1),
                        widget.insta
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "사람태그",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Noto Sans KR"),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "@dunsan_aesthetics",
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Color(0xff666666),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Noto Sans KR"),
                                  ),
                                  Divider(
                                    height: 56.sp,
                                    thickness: 1,
                                  ),
                                ],
                              )
                            : Container(),
                        // box 4

                        Text(
                          "팔레트 필독 안내사항",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "- 초과비용 발생시 본인 부담 / 타쿠폰 적용불가",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 예약 후 방문에 어려움이 발생한 경우, 미리 업체측 및 팔레트 측에 일정을 공유해주셔야 하며 예약 후 방문하지 않은 노쇼의 경우 다음 서비스 참여가 제한됩니다. ",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "- 작성하신 컨텐츠는 6개월 이상 유지해야하며 미 유지시 패널티 (서비스 참여 제한) 부과 됩니다.",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Noto Sans KR"),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ]),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        _makePhoneCall('tel:123456789');
                      });
                    },
                    child: Container(
                      height: 52.sp,
                      width: MediaQuery.of(context).size.width* 0.23,
                      decoration: BoxDecoration(
                          color: Color(0xffAAAAAA),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                          child: Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 30.sp,
                      )),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width* 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContentRegistrationScreen();
                      }));
                    },
                    child: Container(
                      height: 52.sp,
                      width: MediaQuery.of(context).size.width* 0.63,
                      decoration: BoxDecoration(
                          color: Color(0xffEA9FA3),
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                          child: Text("콘텐츠 등록하기",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Color(0xffFFFFFF),
                                  fontFamily: "Noto Sans KR",
                                  fontWeight: FontWeight.w500))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ));
  }
}
