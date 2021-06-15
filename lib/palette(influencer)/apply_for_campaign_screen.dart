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
      content: Text(
        "서비스 유의사항 및 제 3자 제공에\n 동의하셔야 캠페인 신청이 가능합니다.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15.sp,
          color: Color(0xff666666),
          fontWeight: FontWeight.w400,
          fontFamily: "Noto Sans KR",
        ),
      ),
      actionsPadding: EdgeInsets.only(right: 107.sp, bottom: 20),
      actions: [
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
                  "확인",
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
                      width: 37.sp,
                      height: 20.sp,
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
                    width: 37.sp,
                    height: 20.sp,
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
                thickness: 2,
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
                            text: "    01.25",
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
                height: 62.sp,
                thickness: 10.sp,
                color: Color(0xffF9F8F8),
              ),
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
                    onTap: (){
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
                          border: Border.all(color: Color(0xffD1D0D0)),
                          borderRadius: BorderRadius.all(Radius.circular(3))),
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
                thickness: 2,
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
                thickness: 2,
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
                thickness: 2,
              ),
          RichText(
              text: TextSpan(children: <
                  TextSpan>[
                TextSpan(
                  text: "신청자 한마디",
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: Color(0xff888888),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Noto Sans KR"),
                ),
                TextSpan(
                  text: "*" ,
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
                  text: TextSpan(children: <
                      TextSpan>[
                    TextSpan(
                      text: "서비스 신청동의(필수)",
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: Color(0xff888888),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Noto Sans KR"),
                    ),
                    TextSpan(
                      text: "*" ,
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
              InkWell(
                onTap: (){
                  showAlertDialog(context);
                },
                child: Row(
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
                    Text(
                      "서비스 유의사항 및 제 3자 제공에 모두 동의합니다.",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xff666666),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Noto Sans KR"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 29.sp,
              ),
              InkWell(
                onTap: () {
                  if (reqmsg == '') {
                    reqmsgf.requestFocus();
                  } else if(message == ''){
                    messagef.requestFocus();
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
                height: 5.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
