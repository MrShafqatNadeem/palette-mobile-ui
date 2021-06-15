import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PrivacyScreeni extends StatefulWidget {
  @override
  _PrivacyScreeniState createState() => _PrivacyScreeniState();
}

class _PrivacyScreeniState extends State<PrivacyScreeni> {
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
          "개인정보 취급방침",
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
        padding: EdgeInsets.only(left: 20.sp, top: 32.sp),
        child: Text(
          "개인정보 취급방침 내용입니다",
          style: TextStyle(
            fontSize: 14.sp,
            color: Color(0xff666666),
            fontWeight: FontWeight.w400,
            fontFamily: "Noto Sans KR",
          ),
        ),
      ),
    );
  }
}
