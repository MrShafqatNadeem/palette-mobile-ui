import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloatingButton extends StatefulWidget {
  String text = '';

  FloatingButton({this.text});

  @override
  _FloatingButtonState createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 812),
        orientation: Orientation.portrait);
    return Padding(
      padding: EdgeInsets.only(right: 20.sp, left: 20.sp),
      child: Container(
        height: 52.sp,
        decoration: BoxDecoration(
            color: Color(0xffEA9FA3),
            borderRadius: BorderRadius.all(Radius.circular(3))),
        child: Center(
            child: Text(widget.text,
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Noto Sans KR"))),
      ),
    );
  }
}
