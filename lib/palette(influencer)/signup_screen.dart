import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/widgets/custom_text.dart';
import 'package:palette/widgets/custom_textfield.dart';

import 'navigation _bar.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String nickname = '';

  String blog = '';
  String instagram = '';

  FocusNode name;
  FocusNode blogf;
  FocusNode instagramf;
  bool blogheckbox = false;
  bool instagramheckbox = false;
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;
  bool checkbox4 = false;

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
          "회원가입",
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
                hint: "닉네임을 입력해주세요. (최대 8자)",
                onchange: (value) {
                  nickname = value;
                },
              ),
              SizedBox(
                height: 21.sp,
              ),
              CustomText(context: context, text: "SNS 정보"),
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
                hint: "블로그 주소를 입력해주세요.",
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
                hint: "인스타그램 사용자 이름을 입력해주세요.",
                onchange: (value) {
                  instagram = value;
                },
              ),
              Divider(
                height: 53.sp,
                thickness: 2,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 = !checkbox1;
                        checkbox2 && checkbox1
                            ? checkbox2 = true
                            : checkbox2 = !checkbox2;
                        checkbox3 && checkbox1
                            ? checkbox3 = true
                            : checkbox3 = !checkbox3;
                        checkbox4 && checkbox1
                            ? checkbox4 = true
                            : checkbox4 = !checkbox4;
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
                    width: 15,
                  ),
                  Text(
                    "전체 약관 동의",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                ],
              ),
              SizedBox(
                height: 17.sp,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 ? checkbox2 = true : checkbox2 = !checkbox2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: checkbox2 ? Color(0xff333333) : Colors.white,
                          border: Border.all(color: Color(0xffE1E1E1))),
                      child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: checkbox2
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
                    width: 15,
                  ),
                  Text(
                    "서비스 이용약관 동의(필수)",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                  SizedBox(
                    width: 123,
                  ),
                  Text(
                    "상세",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                ],
              ),
              SizedBox(
                height: 17.sp,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 ? checkbox3 = true : checkbox3 = !checkbox3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: checkbox3 ? Color(0xff333333) : Colors.white,
                          border: Border.all(color: Color(0xffE1E1E1))),
                      child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: checkbox3
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
                    width: 15,
                  ),
                  Text(
                    "개인정보 수집 및 이용에 동의(필수)",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  Text(
                    "상세",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  )
                ],
              ),
              SizedBox(
                height: 17.sp,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        checkbox1 ? checkbox4 = true : checkbox4 = !checkbox4;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: checkbox4 ? Color(0xff333333) : Colors.white,
                          border: Border.all(color: Color(0xffE1E1E1))),
                      child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: checkbox4
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
                    width: 15,
                  ),
                  Text(
                    "서비스 모집 및 추천 설문조사, 이벤트 정보등의 \n 이메일 수신에 동의(선택)",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Noto Sans KR"),
                  ),
                ],
              ),
              SizedBox(
                height: 25.5.sp,
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return NavigationBar();
                          }));
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
