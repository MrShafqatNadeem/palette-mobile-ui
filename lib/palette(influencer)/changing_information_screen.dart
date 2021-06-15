import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/widgets/custom_text.dart';
import 'package:palette/widgets/custom_textfield.dart';

import 'navigation _bar.dart';

class ChangingInformationScreen extends StatefulWidget {
  @override
  _ChangingInformationScreenState createState() => _ChangingInformationScreenState();
}

class _ChangingInformationScreenState extends State<ChangingInformationScreen> {
  String nickname = '';

  String blog = '';
  String instagram = '';

  FocusNode name;
  FocusNode blogf;
  FocusNode instagramf;
  bool blogheckbox = true;
  bool instagramheckbox = true;

  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Text(
        "탈퇴 하시겠습니까?",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15.sp,
          color: Color(0xff666666),
          fontWeight: FontWeight.w400,
          fontFamily: "Noto Sans KR",
        ),
      ),
      actionsPadding: EdgeInsets.only(right: 50.sp, bottom: 20),
      actions: [
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
                  "탈퇴",
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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = FocusNode();
    blogf = FocusNode();
    instagramf = FocusNode();
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
          "정보 수정",
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
              CustomText(context: context, text: "닉네임"),
              SizedBox(
                height: 11.sp,
              ),
              CustomTextField(
                context: context,
                focusNode: name,
                hint: "닉네임입니다",
                onchange: (value) {
                  nickname = value;
                },
              ),
              SizedBox(
                height: 21.sp,
              ),
              CustomText(context: context, text: "SNS 주소"),
              SizedBox(
                height: 13.sp,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        blogheckbox = !blogheckbox;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: blogheckbox ? Color(0xff333333) : Colors.white,
                          border: Border.all(color: Color(0xffE1E1E1))),
                      child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: blogheckbox
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
                    width: 10.6.sp,
                  ),
                  Text(
                    "블로그",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Noto Sans KR"),
                  ),
                ],
              ),
              SizedBox(
                height: 12.sp,
              ),
              CustomTextField(
                context: context,
                focusNode: blogf,
                hint: "https://blog.naver.com/j",
                onchange: (value) {
                  blog = value;
                },
              ),
              SizedBox(
                height: 17.sp,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        instagramheckbox = !instagramheckbox;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: instagramheckbox ? Color(0xff333333) : Colors.white,
                          border: Border.all(color: Color(0xffE1E1E1))),
                      child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: instagramheckbox
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
                    width: 10.6.sp,
                  ),
                  Text(
                    "인스타그램",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Noto Sans KR"),
                  ),
                ],
              ),
              SizedBox(
                height: 12.sp,
              ),
              CustomTextField(
                context: context,
                focusNode: instagramf,
                hint: "https://www.instagram.com/d",
                onchange: (value) {
                  instagram = value;
                },
              ),
              SizedBox(
                height: 10.sp,
              ),
              CustomText(context: context, text: "휴대폰번호"),
              SizedBox(
                height: 11.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "010-1234-5678",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Noto Sans KR"),
                  ),
                  Container(
                    height: 46.sp,
                    width: 95.sp,
                    decoration: BoxDecoration(
                        color: Color(0xffEA9FA3),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    child: Center(
                        child: Text("변경 하기",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Noto Sans KR"))),
                  ),
                ],
              ),
              SizedBox(
                height: 140.sp
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: (){
                    showAlertDialog(context);
                  },
                  child: Text(
                    "탈퇴하기",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "Noto Sans KR",
                        color: Color(0xff757575),
                        fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SizedBox(
                height: 21.sp,
              ),
              InkWell(
                onTap: () {
                  // if (checkbox2 && checkbox3) {
                  if (nickname == '') {
                    name.requestFocus();
                  }  else if (blog == '') {
                    blogf.requestFocus();
                  }
                  else if (instagram == '') {
                    instagramf.requestFocus();
                  }
                  else {
                    Navigator.pop(context);
                  }
                  //  }
                  //
                  //   else {
                  //     setState(() {
                  //       message = "서비스 및 개인정보 이용약관에 동의하세요";
                  //       showAlertDialog(context);
                  //     });
                  //   }
                },
                child: Container(
                  height: 52.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffEA9FA3),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: Center(
                      child: Text("가입완료",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Noto Sans KR"))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
