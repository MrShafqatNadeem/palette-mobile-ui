import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/palette(influencer)/signup_screen.dart';
class PhoneVerification extends StatefulWidget {
  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
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
          "휴대폰 본인 인증",
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
      body: Container(
        padding: EdgeInsets.only(top: 230.5.sp, right: 20.sp, left: 20.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/lock.png', width: 75.5.sp, height: 73.sp,),
            SizedBox(
              height: 30.5.sp,
            ),
            Text(
              "팔레트 서비스 이용을 위해 본인인증을 해주세요.",
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Noto Sans KR"),
            ),
            SizedBox(
              height: 15.sp,
            ),
            Text(
              "타인 명의의 모바일 기기를 도용하여 사용하는 경우\n      관련법률에 의거하여 처벌 받을 수 있습니다.",
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xff666666),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Noto Sans KR"),
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return SignupScreen();
                    }));
              },
              child: Container(
                height: 52.sp,
                decoration: BoxDecoration(
                    color: Color(0xffEA9FA3),
                    borderRadius: BorderRadius.all(Radius.circular(3))),
                child: Center(
                    child: Text("인증 하기",
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

    );
  }
}
