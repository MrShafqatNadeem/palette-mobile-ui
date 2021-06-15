import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationScreen extends StatefulWidget {
  static const String idScreen = "NotificationScreen";

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text(
            "알림",
            style: TextStyle(
              color: Color(0xff333333),
              fontWeight: FontWeight.w300,
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
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "[서비스제목]",
                  style: TextStyle(
                    fontFamily: 'Noto Sans KR',
                    fontSize: 15,
                    color: const Color(0xff333333),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "[닉네임] 님이 캠페인에 지원했습니다.",
                  style: TextStyle(
                    fontFamily: 'Noto Sans KR',
                    fontSize: 14,
                    color: const Color(0xff333333),
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "알림 시간(yyyy-mm-dd / hh시간 전 / mm분 전 / 조금 전(ss))",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Noto Sans KR',
                    fontSize: 13,
                    color: const Color(0xff999999),
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(thickness: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
