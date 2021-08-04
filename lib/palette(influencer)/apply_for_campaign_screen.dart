import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/palette(influencer)/select_shipping_address_Screen.dart';
import 'package:palette/widgets/custom_text.dart';
import 'package:palette/widgets/custom_textfield.dart';

class ApplyForRegistrationScreen extends StatefulWidget {
  @override
  _ApplyForRegistrationScreenState createState() =>
      _ApplyForRegistrationScreenState();
}

class _ApplyForRegistrationScreenState
    extends State<ApplyForRegistrationScreen> {
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "서비스 유의 사항 및 제3자 제공에\n 모두 동의해주세요.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.sp,
              color: Color(0xff666666),
              fontWeight: FontWeight.w400,
              fontFamily: "Noto Sans KR",
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 100.sp,
              height: 42.sp,
              margin: EdgeInsets.only(bottom: 10.sp , top: 10.sp),
              decoration: BoxDecoration(
                  color: Color(0xffEB9FA3),
                  borderRadius: BorderRadius.circular(8.sp)),
              child: Center(
                  child: Text(
                    "Ok",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Noto Sans KR",
                    ),
                  )),
            ),
          ),
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
            "어려운 소상공인을 위한다는 마음으로\n 캠페인을 신청해주세요.\n\n 서비스가 맘에 들지 않더라도\n 긍정적인 포스팅을 올려주시겠습니까?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.sp,
              color: Color(0xff666666),
              fontWeight: FontWeight.w400,
              fontFamily: "Noto Sans KR",
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 100.sp,
                  height: 42.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffEB9FA3),
                      borderRadius: BorderRadius.circular(8.sp)),
                  child: Center(
                      child: Text(
                        "취소",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Noto Sans KR",
                        ),
                      )),
                ),
              ),
              SizedBox(
                width: 15.sp,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 100.sp,
                  height: 42.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffAAAAAA),
                      borderRadius: BorderRadius.circular(8.sp)),
                  child: Center(
                      child: Text(
                        "신청",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
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
  String message = '';
  String reqmsg = '';

  FocusNode messagef;
  FocusNode reqmsgf;

  bool checkbox1 = false;
  bool offline = true;

  void initState() {
    // TODO: implement initState
    super.initState();
    messagef = FocusNode();
    reqmsgf = FocusNode();
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
          "캠페인 신청하기",
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
        child: Container(
          padding: EdgeInsets.only(top: 31.5.sp, right: 20.sp, left: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "[대전] 더예쁜 손톱레푸스 둔산점",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(height: 9.sp),
              Text(
                "대전에서 가장 핫한 네일아트전문점",
                style: TextStyle(
                    fontSize: 15.sp,
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
                              fontSize: 14.sp,
                              color: Color(0xff0BC95F),
                              fontWeight: FontWeight.w700,
                              fontFamily: "yanoljayache"),
                        ),
                      )),
                  SizedBox(width: 8.sp),
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
              Divider(
                height: 58.sp,
                thickness: 10.sp,
                color: Color(0xffF9F8F8),
              ),
              offline
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          offline = false;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            height: 12.sp,
                          ),
                          Text(
                            "[예시. 1인 1회 / 1~3번 중 택 1",
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Color(0xff666666),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Noto Sans KR"),
                          ),
                          SizedBox(
                            height: 12.sp,
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
                            height: 12.sp,
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
                            height: 12.sp,
                          ),
                          Text(
                            "3. 내성발톱 교정 ※대리인 가능하나 인플루언서 동반필수",
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Color(0xff666666),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Noto Sans KR"),
                          ),
                          Divider(
                            height: 64.sp,
                            thickness: 10.sp,
                            color: Color(0xffF9F8F8),
                          ),
                        ],
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        setState(() {
                          offline = true;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            "서비스 내용",
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Color(0xff666666),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Noto Sans KR"),
                          ),
                          Divider(
                            height: 64.sp,
                            thickness: 10.sp,
                            color: Color(0xffF9F8F8),
                          ),
                        ],
                      ),
                    ),

              offline
                  ? Container()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  context: context,
                                  text: "배송지",
                                ),
                                SizedBox(
                                  height: 8.sp,
                                ),
                                Text(
                                  "등록된 배송지가 없습니다.\n 배송지를 추가해주세요.",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      color: Color(0xff888888),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Noto Sans KR"),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return SelectShippingAdressScreen();
                                }));
                              },
                              child: Container(
                                width: 75.sp,
                                height: 40.sp,
                                margin: EdgeInsets.only(top: 25.5.sp),
                                decoration: BoxDecoration(
                                    color: Color(0xffF9F8F8),
                                    border:
                                        Border.all(color: Color(0xffD1D0D0)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3))),
                                child: Center(
                                    child: Text("변경",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Noto Sans KR"))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 21.sp,
                        ),
                        Text(
                          "배송 요청사항",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Noto Sans KR"),
                        ),
                        CustomTextField(
                          context: context,
                          focusNode: reqmsgf,
                          hint: "배송 시 요청할 메시지를 입력해주세요.",
                          onchange: (value) {
                            reqmsg = value;
                          },
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                      ],
                    ),

              Text(
                "신청자 정보",
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
                "연락처",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff888888),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 7.sp,
              ),
              Text(
                "010-1234-5678",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 7.sp,
              ),
              Divider(
                thickness: 1,
                height: 0,
              ),
              SizedBox(
                height: 28.sp,
              ),
              Text(
                "SNS 주소",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Color(0xff888888),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 11.sp,
              ),
              Text(
                "https://blog.naver.com/pl",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 7.sp,
              ),
              Divider(
                thickness: 1,
                height: 0,
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "미션 게시물을 작성할 주소를 입력해주세요. 입력한 블로그는 선정완료 후 변경할수 없습니다.",
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              SizedBox(
                height: 14.sp,
              ),
              Text(
                "- PC에서 확인하신 URL을 등록해주세요.\n - http:// 또는 https://를 포함한 정확한 SNS 주소를 입력해주세요.\n - SNS 주소 입력에 어려움이 있으시다면 고객센터로 문의해주세요.",
                style: TextStyle(
                    fontSize: 10.sp,
                    color: Color(0xff707070),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Noto Sans KR"),
              ),
              Divider(
                height: 37.sp,
                thickness: 1,
              ),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: "신청자 한마디",
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: Color(0xff888888),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Noto Sans KR"),
                ),
                TextSpan(
                  text: "*",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffF34C55),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Noto Sans KR"),
                ),
              ])),
              CustomTextField(
                context: context,
                focusNode: messagef,
                hint: "신청자 한마디를 남겨주세요. (최대40자)",
                onchange: (value) {
                  message = value;
                },
              ),
              SizedBox(
                height: 17.sp,
              ),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: "서비스 신청동의(필수)",
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: Color(0xff888888),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Noto Sans KR"),
                ),
                TextSpan(
                  text: "*",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffF34C55),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Noto Sans KR"),
                ),
              ])),
              SizedBox(
                height: 8.sp,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 = !checkbox1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: checkbox1 ? Color(0xff333333) : Colors.white,
                          border: Border.all(color: Color(0xffE1E1E1))),
                      child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: checkbox1
                              ? Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                )),
                    ),
                  ),
                  SizedBox(
                    width: 6.sp,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 = !checkbox1;
                      });
                    },
                    child: Text(
                      "서비스 유의사항 및 제 3자 제공에 모두 동의합니다.",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Noto Sans KR"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 29.sp,
              ),
              InkWell(
                onTap: () {
                  if (offline == false) {
                    if (reqmsg == '') {
                      reqmsgf.requestFocus();
                    }
                  } else if (message.length < 2 || message.length > 30) {
                    messagef.requestFocus();
                  } else if (message == '') {
                    messagef.requestFocus();
                  } else if (checkbox1 == false) {
                    showAlertDialog(context);
                  }
                  else
                    {
                      showAlertDialog1(context);
                    }
                },
                child: Container(
                  height: 52.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffEA9FA3),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Center(
                      child: Text("캠페인 신청하기",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Noto Sans KR"))),
                ),
              ),
              SizedBox(
                height: 16.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
