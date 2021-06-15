import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomText extends StatelessWidget {
  String text ;
  BuildContext context;
  CustomText({this.context , this.text});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: <
            TextSpan>[
          TextSpan(
            text: text,
            style: TextStyle(
                fontSize: 15.sp,
                color: Color(0xff333333),
                fontWeight: FontWeight.w700,
                fontFamily: "Noto Sans KR"),
          ),
          TextSpan(
            text: "*" ,
            style: TextStyle(
                fontSize: 15.sp,
                color: Color(0xffF34C55),
                fontWeight: FontWeight.w700,
                fontFamily: "Noto Sans KR"),
          ),
        ]));
  }
}
