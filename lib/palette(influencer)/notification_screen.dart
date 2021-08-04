import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette/palette(influencer)/storesScreen.dart';

import 'navigation _bar.dart';
class NotificationScreeni extends StatefulWidget {
  static const String idScreen = "NotificationScreen";

  @override
  _NotificationScreeniState createState() => _NotificationScreeniState();
}

class _NotificationScreeniState extends State<NotificationScreeni> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 812),
        orientation: Orientation.portrait);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text(
            "알림",
            style: TextStyle(
              color: Color(0xff333333),
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              fontFamily: "Noto Sans KR",
            ),
          ),
          centerTitle: true,
          elevation: 1.5,
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 13,
          itemBuilder: (BuildContext context, int index) => Container(
            padding: EdgeInsets.only(top: 21.sp, left: 20.sp, right: 20.sp),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) {
                          return
                            NavigationBar();
                        }));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "[서비스제목]",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Noto Sans KR',
                      fontSize: 14.sp,
                      color: const Color(0xff333333),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "캠페인 신청이 마감되었습니다.",
                    style: TextStyle(
                      fontFamily: 'Noto Sans KR',
                      fontSize: 14.sp,
                      color: const Color(0xff333333),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "조금 전",
                    style: TextStyle(
                      fontFamily: 'Noto Sans KR',
                      fontSize: 11.sp,
                      color: const Color(0xff999999),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 16.sp,
                  ),
                  Divider(thickness: 1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
